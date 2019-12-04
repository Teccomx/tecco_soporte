<script>

    $( document ).ready(function() {
        $("#grid-addresses").UIBootgrid(
            {   search:'/api/teccosoporte/settings/searchItem/',
                get:'/api/teccosoporte/settings/getItem/',
                set:'/api/teccosoporte/settings/setItem/',
                add:'/api/teccosoporte/settings/addItem/',
                del:'/api/teccosoporte/settings/delItem/',
                toggle:'/api/teccosoporte/settings/toggleItem/'
            }
        );
    });

</script>


<table id="grid-addresses" class="table table-condensed table-hover table-striped" data-editDialog="DialogAddress">
    <thead>
        <tr>
            <th data-column-id="uuid" data-type="string" data-identifier="true"  data-visible="false">{{ lang._('ID') }}</th>
            <th data-column-id="enabled" data-width="6em" data-type="string" data-formatter="rowtoggle">{{ lang._('Enabled') }}</th>
            <th data-column-id="email" data-type="string">{{ lang._('Email') }}</th>
            <th data-column-id="commands" data-width="7em" data-formatter="commands" data-sortable="false">{{ lang._('Commands') }}</th>
        </tr>
    </thead>
    <tbody>
    </tbody>
    <tfoot>
        <tr>
            <td></td>
            <td>
                <button data-action="add" type="button" class="btn btn-xs btn-default"><span class="fa fa-plus"></span></button>
                <button data-action="deleteSelected" type="button" class="btn btn-xs btn-default"><span class="fa fa-trash-o"></span></button>
            </td>
        </tr>
    </tfoot>
</table>


{{ partial("layout_partials/base_dialog",['fields':formDialogAddress,'id':'DialogAddress','label':lang._('Edit address')])}}
