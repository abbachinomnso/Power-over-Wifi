function Z_5_result_csv_gen(table, path)

line_feed = '\n';
separator = ',';

fp = fopen(path, 'w');
size_t = size(table);
row_size = size_t(1);

for row = 1:row_size
    fprintf(fp, '%e', table(row,1));
    fprintf(fp, separator);
    fprintf(fp, '%e', table(row,2));
    fprintf(fp, separator);
    fprintf(fp, '%e', table(row,3));
    fprintf(fp, separator);
    fprintf(fp, '%e', table(row,4));
    fprintf(fp, separator);
    fprintf(fp, '%e', table(row,5));
    fprintf(fp, separator);
    fprintf(fp, '%e', table(row,6));
    fprintf(fp, separator);
    fprintf(fp, '%e', table(row,7));
    fprintf(fp, separator);
    fprintf(fp, '%e', table(row,8));
    fprintf(fp, separator);
    fprintf(fp, '%e', table(row,9));
    fprintf(fp, line_feed);
    
end

fclose(fp);

end