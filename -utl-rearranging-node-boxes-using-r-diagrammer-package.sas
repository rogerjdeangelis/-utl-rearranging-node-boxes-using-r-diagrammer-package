%let pgm=utl-rearranging-node-boxes-using-r-diagrammer-package;

%stop_ubmisson;

Rearranging node boxes using r diagrammer package

github
https://tinyurl.com/39hva5pm
https://github.com/rogerjdeangelis/-utl-rearranging-node-boxes-using-r-diagrammer-package

https://tinyurl.com/yx4dbrcj
https://stackoverflow.com/questions/79392425/create-a-straight-edge-between-nodes-if-there-is-another-node-branching-from-the

RELATED REPOS
-----------------------------------------------------------------------------------------------------------------------------------
https://github.com/rogerjdeangelis/utl-create-a-sankey-diagram-using-r-packages-dplyr-ggsankey-and-ggplot2-lie-stacked-bar-chart
https://github.com/rogerjdeangelis/utl-create-simpe-venn-diagram
https://github.com/rogerjdeangelis/utl-interaction-between-a-Network-Diagram-and-a-Sankey-diagram-r-networkD3
https://github.com/rogerjdeangelis/utl-r-reproducitible-example-of-the-fishbone-diagram
https://github.com/rogerjdeangelis/utl-visualization-of-a-decision-tree-with-horizontal-bar-charts-graphics-diagram
https://github.com/rogerjdeangelis/utl_diagramme_a_flow_with_a_predefined_order_of_the_nodes
https://github.com/rogerjdeangelis/utl_fishbone_diagram_and_team_solutions_to_a_complex_problem
https://github.com/rogerjdeangelis/utl_voronoi_diagram_on_a_shapefile_of_singapore
https://github.com/rogerjdeangelis/mySQL-uml-modeling-to-create-entity-diagrams-for-sas-datasets
https://github.com/rogerjdeangelis/utl-R-Diagramming-tool-for-UML-YAML

/************************************************************************************************************************/
/*                                      |                                       |                                       */
/*              INPUT                   |       PROCESS                         |              OUTPUT                   */
/*              =====                   |       =======                         |              ======                   */
/*                                      |                                       |                                       */
/*               +--------------------+ | %utl_rbeginx;                         |  +---------+   +--------------------+ */
/*               |                    | | parmcards4;                           |  |         |   |                    | */
/* +---------+   |                    | | library(DiagrammeR)                   |  |   A0    |   |                    | */
/* |         |   |                    | | library(DiagrammeRsvg)                |  |         |   |                    | */
/* |   A0    |   |        B0          | | library(rsvg)                         |  +---------+   |                    | */
/* |         |   |                    | | library(dplyr)                        |                |        B0          | */
/* +---------+   |                    | | grf<-grViz("                          |  +---------+   |                    | */
/*          \    |                    | | digraph G {                           |  |         |   |                    | */
/*           \   +--------------------+ |     rankdir=LR                        |  |  A1     |   |                    | */
/*            \   /                     |                                       |  |         |   |                    | */
/*             \ /                      |     node [shape=box];                 |  +---------+   +--------------------+ */
/*              \                       |     {rank=same                        |                                       */
/*         +---------+                  |       a0; a1;                         |                                       */
/*         |         |                  |       y1 [shape = point, width = 0    |                                       */
/*         |   A1    |                  |        , height = 0];                 |                                       */
/*         |         |                  |     }                                 |                                       */
/*         +---------+                  |     b0[height=1.5,width=2];           |                                       */
/*                                      |                                       |                                       */
/*                                      |     a0 -> y1 [arrowhead=none];        |                                       */
/*                                      |     y1 -> a1;                         |                                       */
/*                                      |     y1 -> b0;                         |                                       */
/*                                      | }                                     |                                       */
/*                                      | ")                                    |                                       */
/*                                      | grf %>%                               |                                       */
/*                                      |   export_svg() %>%                    |                                       */
/*                                      |   charToRaw() %>%                     |                                       */
/*                                      |   rsvg_png("d:/png/output_graph.png"  |                                       */
/*                                      |   ,width = 1000                       |                                       */
/*                                      |   ,height = 800)                      |                                       */
/*                                      | ;;;;                                  |                                       */
/*                                      | %utl_rendx;                           |                                       */
/*                                      |                                       |                                       */
/************************************************************************************************************************/

/*                   _
(_)_ __  _ __  _   _| |_
| | `_ \| `_ \| | | | __|
| | | | | |_) | |_| | |_
|_|_| |_| .__/ \__,_|\__|
        |_|
*/

MANUALLY CREATED FROM

https://tinyurl.com/yx4dbrcj

              +--------------------+
              |                    |
+---------+   |                    |
|         |   |                    |
|   A0    |   |        B0          |
|         |   |                    |
+---------+   |                    |
         \    |                    |
          \   +--------------------+
           \   /
            \ /
             \
        +---------+
        |         |
        |   A1    |
        |         |
        +---------+

/*
 _ __  _ __ ___   ___ ___  ___ ___
| `_ \| `__/ _ \ / __/ _ \/ __/ __|
| |_) | | | (_) | (_|  __/\__ \__ \
| .__/|_|  \___/ \___\___||___/___/
|_|
*/

%utlfkil(d:/png/rearrange_nodes.png);

%utl_rbeginx;
parmcards4;
library(DiagrammeR)
library(DiagrammeRsvg)
library(rsvg)
library(dplyr)
grf<-grViz("
digraph G {
    rankdir=LR

    node [shape=box];
    {rank=same
      a0; a1;
      y1 [shape = point, width = 0
       , height = 0];
    }
    b0[height=1.5,width=2];

    a0 -> y1 [arrowhead=none];
    y1 -> a1;
    y1 -> b0;
}
")
grf %>%
  export_svg() %>%
  charToRaw() %>%
  rsvg_png("d:/png/rearrange_nodes.png"
  ,width = 1000
  ,height = 800)
;;;;
%utl_rendx;

/**************************************************************************************************************************/
/*                                                                                                                        */
/*  +---------+   +--------------------+                                                                                  */
/*  |         |   |                    |                                                                                  */
/*  |   A0    |   |                    |                                                                                  */
/*  |         |   |                    |                                                                                  */
/*  +---------+   |                    |                                                                                  */
/*                |        B0          |                                                                                  */
/*  +---------+   |                    |                                                                                  */
/*  |         |   |                    |                                                                                  */
/*  |  A1     |   |                    |                                                                                  */
/*  |         |   |                    |                                                                                  */
/*  +---------+   +--------------------+                                                                                  */
/*                                                                                                                        */
/**************************************************************************************************************************/

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/
