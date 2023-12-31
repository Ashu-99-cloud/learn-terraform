variable "fruit" {
  default = "apple"
}

variable "fruits" {
  default = [ "apple", "banana" ]
}

variable "fruit_prices" {
  default = {
    apple = 10
    banana =20
  }
}

output "fruit"  {
  value = var.fruit
}

output "first_fruit"  {
  value = var.fruits[0]
}

output "fruit_prices"  {
  value = "Price of apple = ${var.fruit_prices["apple"]}"
}

