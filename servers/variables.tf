variable "image_id" {
    default = "ami-0870650fde0fef2d4"
    type = string
    description = "Essa variável é o ID da AMI da AWS que será usada no servidor"

    validation {
        condition     = length(var.image_id) > 4 && substr(var.image_id, 0, 4) == "ami-"
        error_message = "A imagem_id tem que ser um valor válido de AMI, iniciando com \"ami-\"."
    }
}
/*Como não foi usado um default na variável de baixo, será obrigado a informar
o valor da variável quando for executar o terraform
*/
variable "servers" {

}