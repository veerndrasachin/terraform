resource "local_file" "my-pet" {
filename = var.filename[count.index]
content = "I love cats!"
count = 3
}
variable "filename" {
default = [
"parrots.txt",
"cats.txt",
"dogs.txt"
]
}
