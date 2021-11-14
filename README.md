# README

​

# Marcadores

# Descripcion De la Prueba

Mientras navegamos por internet encontramos artículos y sitios web que nos parecen

interesantes, pero que no tenemos tiempo de revisar en ese instante y tendemos a usar

nuestros marcadores para dejarlos como referencia.

En nuestro browser sólo podemos agruparlos por tipo o alguna otra categorización que

hayamos definido previamente.

Necesitamos un sistema que nos permita extender la funcionalidad de los marcadores de

tal manera que podamos agruparlos por categoría y que además podamos definir subtipos,

por ejemplo video, artículo, paper u otro tipo. Las categorías pueden tener anidadas otras

categorías y no existe límite de sub categorías. En cambio los tipos, sólo están a un nivel y

no pueden existir subtipos.

Una de las particularidades de nuestro sistema de bookmarks, es que podemos compartir

listas, esto es, que dada cierta categoría o subcategoría podemos hacer que todas las

subcategorías sean públicas o privadas.

Suponer:

● El nivel de visibilidad (público o privado) de una lista de subcategorías está definido

por la categoría que se ha consultado. Por ejemplo, si se consulta "Animales" y es

privada, cada sub categoría será privada. Si se consulta "Mamíferos" (sub categoría

de Animales) y ésta es pública, desde ese nivel hacia abajo es pública. Es decir, para

efectos de mostrar data, sólo se debe considerar el nivel de visibilidad de la

categoría que se está consultando.

● El sistema es colaborativo, no existe sistema de usuario, por lo que cualquier

persona puede agregar o quitar elementos de una lista/categoría.

​

### Pre-requisitos ��

​

* ruby '2.7.3'

* gem 'rails', '~> 5.2.6'

​

## modelo fisico ��

​![Modelo conceptual](https://github.com/r-osoriobarra/models_dl/blob/main/models/marcadores.jpg)

​

## Construido con ��️

​

* Visual Basic (editor de texto)

* Ruby 2.7.3

* Rails 5.2.6

​

## gemas instalada ��

* gem 'bootstrap', '~> 4.3.1'

* gem 'jquery-rails'

* gem 'faker'

* gem "chartkick"

​

##  Acceder al Endpoint ��️

​Para ingresar a los datos de la api , se debe ingresar : /api/v1/category/:id

La estrucutura de la api está anidadad desde Categoria > Subcategoria > Bookmark

Por ejemplo al consultar por la categoria 2:

```
{
  "id": 2,
  "name": "The Talking Heads",
  "created_at": "2021-11-14T19:33:39.412Z",
  "updated_at": "2021-11-14T21:14:29.432Z",
  "category_id": null,
  "public_state": false,
  "sub_categories": [
    {
      "id": 5,
      "name": "Like A Rolling Stone",
      "created_at": "2021-11-14T19:33:39.431Z",
      "updated_at": "2021-11-14T21:14:29.444Z",
      "category_id": 2,
      "public_state": false
    },
    {
      "id": 10,
      "name": "Going Mobile",
      "created_at": "2021-11-14T19:33:39.464Z",
      "updated_at": "2021-11-14T21:14:29.452Z",
      "category_id": 2,
      "public_state": false
    },
    {
      "id": 12,
      "name": "Dream On",
      "created_at": "2021-11-14T19:33:39.477Z",
      "updated_at": "2021-11-14T21:14:29.468Z",
      "category_id": 2,
      "public_state": false
    },
    {
      "id": 15,
      "name": "fabiloco",
      "created_at": "2021-11-14T21:10:10.272Z",
      "updated_at": "2021-11-14T21:14:29.492Z",
      "category_id": 2,
      "public_state": false
    }
  ],
  "bookmarks": [
    {
      "id": 11,
      "name": "The Dark Side of the Moon",
      "url": "http://labadie.co/percy",
      "category_id": 2,
      "url_type_id": 1,
      "created_at": "2021-11-14T19:33:39.663Z",
      "updated_at": "2021-11-14T19:33:39.663Z"
    }
  ]
}
```


##  Ejempo de Orden de Datos��️

​

* Categoria 

* subcategorias

​

## Autores ✒️

Rodrigo Osorio

Fabian Salas Orozo