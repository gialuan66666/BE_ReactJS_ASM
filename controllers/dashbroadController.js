const UserController = require('../controllers/user.controller');
const ProductController = require('../controllers/product.controller');
const ReviewController = require('../controllers/review.controller');
const OrderController = require('../controllers/order.controller');

const getDashboardStats = async (req, res) => {
  try {
    // Gọi các hàm từ các controller khác để lấy số liệu thống kê
    const productCount = await ProductController.getProductCount();  // Sử dụng hàm getProductCount
    const orderCount = await OrderController.getOrderCount();  // Sử dụng hàm getOrderCount từ OrderController
    const userCount = await UserController.getUserCount();  // Sử dụng hàm getUserCount
    const commentCount = await ReviewController.getCommentCount();  // Sử dụng hàm getCommentCount

    res.json({ productCount, orderCount, userCount, commentCount });
  } catch (error) {
    console.error("Lỗi thống kê:", error);
    res.status(500).json({ message: "Lỗi server" });
  }
};

module.exports = { getDashboardStats };
