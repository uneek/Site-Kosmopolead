= Navigation Tags

Provides hierarchical tree navigation based on Radiant's site structure. Outputs navigation in the form of a -very flexible and CSS'able- unordered list. Also provides r:if_self and r:if_ancestor_or_self

== Usage

<r:nav [root="/"] [include_root="true"] [depth="2"] [expand_all="true"] [ids_for_lis="true"] />

Given this directory tree: 

* Home
  * About
    * Contact us
  * Blog
    * First Article
    * Second Article
  * Catalog

<r:nav depth="2" /> would output a navigation list like: 

<ul>
  <li class="parent_of_current has_children"><a href="/about/">About</a>
    <ul>
      <li class="current"><a href="/about/contact">Contact Us</a></li>
    </ul>
  </li>
  <li class="has_children"><a href="/blog/">Blog</a></li>
  <li class="has_children"><a href="/catalogue">Catalogue</a></li>
</ul>

Use only and except to filter which pages are included.
The following would output a navigation list only containing only the pages articles, or notices, or their descendants, and which aren't css, javascript, or xml pages:
 
<r:nav only="^/(articles|notices)/" except="\.(css|js|xml)/*$" />
 
 
== Available tag attributes:
 
* root defaults: to "/", where to start building the navigation from, you can i.e. use "/products" to build a subnav
* include_root: defaults to false, set to true to include the root page (i.e. Home)
* ids_for_lis: defaults to false, enable this to give each li an id (it's slug prefixed with nav_)
* ids_for_links: defaults to false, enable this to give each link an id (it's slug prefixed with nav_)

* depth: defaults to 1, which means no sub-ul's, set to 2 or more for a nested list
* expand_all: defaults to false, enable this to have all li's create sub-ul's of their children, i.o. only the currently active li

* only: a string or regular expresssion. only pages whose urls match this are included
* except: a string or regular expresssion. pages whose urls match this are not shown. except will override only. use to eliminate non-content file-types

* id, class, monkeyballs, ...      will be used as html attributes for the ul

= CREDITS

* Ryan Heneise
* Marty Haught
* Benny Degezelle
* Arthur Gunn