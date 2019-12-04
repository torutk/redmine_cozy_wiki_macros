# redmine_cozy_wiki_macros
Redmine plugin for misc wiki macros

## how to install

clone this repository in plugins directory and restart redmine.

## wiki macros

### query_link macro
Link to custom query by id.
```
Usage: {{query_link(text, query_id)}}
```
* text: hyper link text to issue custome query on wiki page
* query_id: custom query id to be linked

### query_link_gantt macro
Link to custom query gantt chart by id.
```
Usage: {{query_link_gantt(text, query_id, year=2019, month=12, months=6, zoom=3)}}
```
* Required
  * text: hyper link text to gantt of issues custome query on wiki page
  * query_id: custom query id to be linked
* Optional
  * year: start year
  * month: start month
  * months: term by month
  * zoom: [1-4], zoom level of dates
