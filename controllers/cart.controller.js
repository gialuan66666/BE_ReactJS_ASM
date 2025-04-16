const CartModel = require('../models/cartModel');

class CartController {
  static response(res, status, message, data = {}) {
    return res.status(status).json({ message, ...data });
  }

  static async getByUser(req, res) {
    try {
      const { user_id } = req.params;
      const data = await CartModel.findAll({ where: { user_id } });
      return this.response(res, 200, 'Lấy giỏ hàng thành công', { data });
    } catch (error) {
      console.error("❌ [getByUser] Lỗi:", error);
      return this.response(res, 500, 'Lỗi server', { error: error.message });
    }
  }

  static async add(req, res) {
    try {
      const user_id = req.user?.id;
      const { variant_id, quantity } = req.body;

      if (!user_id) return this.response(res, 401, "Token không hợp lệ hoặc thiếu middleware");
      if (!variant_id) return this.response(res, 400, "Thiếu variant_id");
      if (!Number.isInteger(quantity) || quantity <= 0)
        return this.response(res, 400, "Số lượng phải là số nguyên dương");

      const existing = await CartModel.findOne({ where: { user_id, variant_id } });
      if (existing) {
        existing.quantity += quantity;
        await existing.save();
        return this.response(res, 200, "Cập nhật số lượng giỏ hàng thành công", { item: existing });
      }

      const item = await CartModel.create({ user_id, variant_id, quantity });
      return this.response(res, 201, "Thêm sản phẩm vào giỏ hàng thành công", { item });
    } catch (error) {
      console.error("❌ [add] Lỗi:", error);
      return this.response(res, 500, "Lỗi server", { error: error.message });
    }
  }

  static async update(req, res) {
    try {
      const { id } = req.params;
      const { quantity } = req.body;

      const item = await CartModel.findByPk(id);
      if (!item) return this.response(res, 404, 'Không tìm thấy mục trong giỏ');

      item.quantity = quantity;
      await item.save();
      return this.response(res, 200, 'Cập nhật số lượng thành công', { item });
    } catch (error) {
      console.error("❌ [update] Lỗi:", error);
      return this.response(res, 500, 'Lỗi server', { error: error.message });
    }
  }

  static async delete(req, res) {
    try {
      const { id } = req.params;
      const item = await CartModel.findByPk(id);
      if (!item) return this.response(res, 404, 'Không tìm thấy mục trong giỏ');

      await item.destroy();
      return this.response(res, 200, 'Xoá sản phẩm khỏi giỏ hàng thành công');
    } catch (error) {
      console.error("❌ [delete] Lỗi:", error);
      return this.response(res, 500, 'Lỗi server', { error: error.message });
    }
  }
}

module.exports = CartController;
