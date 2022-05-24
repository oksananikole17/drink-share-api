const mongoose = require('mongoose')

const drinkSchema = new mongoose.Schema(
  {
    name: {
      type: String,
      required: true
    },
    base: {
      type: String,
      required: true
    },
    build: {
      type: String,
      required: true
    },
    owner: {
      type: mongoose.Schema.Types.ObjectId,
      ref: 'User',
      required: true
    }
  },
  {
    timestamps: true
  }
)

module.exports = mongoose.model('Drink', drinkSchema)
