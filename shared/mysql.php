<table>
    <?php
    $modules = get_loaded_extensions();
    asort($modules);
    foreach ($modules as $extension) :
    ?>
    <tr>
        <td><?php echo $extension; ?></td>
        <td><i class="fa fa-check"></i></td>
    </tr>
    <?php endforeach; ?>
</table>
