const connection = require('../database');
const { DataTypes } = require('sequelize');

const ProductVariant = connection.define('ProductVariant', {
  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true
  },
  product_id: {
    type: DataTypes.INTEGER,
    allowNull: false
  },
  size_id: {
    type: DataTypes.INTEGER,
    allowNull: false
  },
  color_id: {
    type: DataTypes.INTEGER,
    allowNull: false
  },
  stock: {
    type: DataTypes.INTEGER,
    defaultValue: 0
  }
}, {
  tableName: 'product_variants',
  timestamps: true
});

const ProductModel = require("./productsModel");
const SizeModel = require("./sizeModel");
const ColorModel = require("./colorModel");

ProductVariant.belongsTo(ProductModel, {
  foreignKey: "product_id",
  as: "product"
});

ProductVariant.belongsTo(SizeModel, {
  foreignKey: "size_id",
  as: "size"
});

ProductVariant.belongsTo(ColorModel, {
  foreignKey: "color_id",
  as: "color"
});



module.exports = ProductVariant;
