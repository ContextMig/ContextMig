.class public Lkdk/android/simplydo/RestoreActivity;
.super Landroid/app/ListActivity;
.source "RestoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkdk/android/simplydo/RestoreActivity$NameOnlyFile;
    }
.end annotation


# static fields
.field private static final DIALOG_RESTORE_WARN:I = 0x12c

.field private static final EXTENSION:Ljava/lang/String; = ".simplydo"


# instance fields
.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lkdk/android/simplydo/RestoreActivity$NameOnlyFile;",
            ">;"
        }
    .end annotation
.end field

.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lkdk/android/simplydo/RestoreActivity$NameOnlyFile;",
            ">;"
        }
    .end annotation
.end field

.field private restoreFile:Lkdk/android/simplydo/RestoreActivity$NameOnlyFile;

.field private restoreFilenameFilter:Ljava/io/FilenameFilter;

.field private restoreWarningBuilder:Landroid/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 52
    new-instance v0, Lkdk/android/simplydo/RestoreActivity$1;

    invoke-direct {v0, p0}, Lkdk/android/simplydo/RestoreActivity$1;-><init>(Lkdk/android/simplydo/RestoreActivity;)V

    iput-object v0, p0, Lkdk/android/simplydo/RestoreActivity;->restoreFilenameFilter:Ljava/io/FilenameFilter;

    .line 60
    new-instance v0, Lkdk/android/simplydo/RestoreActivity$2;

    invoke-direct {v0, p0}, Lkdk/android/simplydo/RestoreActivity$2;-><init>(Lkdk/android/simplydo/RestoreActivity;)V

    iput-object v0, p0, Lkdk/android/simplydo/RestoreActivity;->comparator:Ljava/util/Comparator;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lkdk/android/simplydo/RestoreActivity;)V
    .locals 0
    .param p0, "x0"    # Lkdk/android/simplydo/RestoreActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lkdk/android/simplydo/RestoreActivity;->doRestore()V

    return-void
.end method

.method private doRestore()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 165
    const-string v5, "SimplyDo"

    const-string v6, "RestoreActivity.doRestore() called"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-static {}, Lkdk/android/simplydo/SimplyDoActivity;->getInstance()Lkdk/android/simplydo/SimplyDoActivity;

    move-result-object v5

    invoke-virtual {v5}, Lkdk/android/simplydo/SimplyDoActivity;->getDataVeiwer()Lkdk/android/simplydo/DataViewer;

    move-result-object v5

    invoke-interface {v5}, Lkdk/android/simplydo/DataViewer;->flush()V

    .line 170
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, "state":Ljava/lang/String;
    const-string v5, "mounted"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 173
    const-string v5, "Media not mount or read-only"

    invoke-static {p0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 229
    :goto_0
    return-void

    .line 182
    :cond_0
    const-string v5, "simplydo.db"

    invoke-virtual {p0, v5}, Lkdk/android/simplydo/RestoreActivity;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 183
    .local v1, "dbFile":Ljava/io/File;
    const-string v5, "simplydo.db.bak"

    invoke-virtual {p0, v5}, Lkdk/android/simplydo/RestoreActivity;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 184
    .local v0, "dbBakFile":Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    .line 185
    .local v3, "moved":Z
    if-nez v3, :cond_1

    .line 187
    const-string v5, "Unable to move old database out of the way."

    invoke-static {p0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 198
    :cond_1
    :try_start_0
    iget-object v5, p0, Lkdk/android/simplydo/RestoreActivity;->restoreFile:Lkdk/android/simplydo/RestoreActivity$NameOnlyFile;

    iget-object v5, v5, Lkdk/android/simplydo/RestoreActivity$NameOnlyFile;->file:Ljava/io/File;

    invoke-static {v5, v1}, Lkdk/android/simplydo/SettingsActivity;->fileCopy(Ljava/io/File;Ljava/io/File;)V

    .line 201
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    invoke-static {}, Lkdk/android/simplydo/SimplyDoActivity;->getInstance()Lkdk/android/simplydo/SimplyDoActivity;

    move-result-object v5

    invoke-virtual {v5}, Lkdk/android/simplydo/SimplyDoActivity;->getDataVeiwer()Lkdk/android/simplydo/DataViewer;

    move-result-object v5

    invoke-interface {v5}, Lkdk/android/simplydo/DataViewer;->invalidateCache()V

    .line 220
    invoke-static {}, Lkdk/android/simplydo/SimplyDoActivity;->getInstance()Lkdk/android/simplydo/SimplyDoActivity;

    move-result-object v5

    invoke-virtual {v5}, Lkdk/android/simplydo/SimplyDoActivity;->cacheInvalidated()V

    .line 222
    const-string v5, "Database restored."

    invoke-static {p0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 228
    invoke-virtual {p0}, Lkdk/android/simplydo/RestoreActivity;->finish()V

    goto :goto_0

    .line 203
    :catch_0
    move-exception v2

    .line 206
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 207
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 209
    const-string v5, "SimplyDo"

    const-string v6, "Failed to copy restore database into place"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    const-string v5, "Failed to copy restore database into place. Nothing restored."

    invoke-static {p0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private refresh()V
    .locals 8

    .prologue
    .line 149
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "/Android/data/kdk.android.simplydo/files/"

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 152
    .local v1, "backupDirectory":Ljava/io/File;
    iget-object v6, p0, Lkdk/android/simplydo/RestoreActivity;->restoreFilenameFilter:Ljava/io/FilenameFilter;

    invoke-virtual {v1, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 153
    .local v3, "files":[Ljava/io/File;
    iget-object v6, p0, Lkdk/android/simplydo/RestoreActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6}, Landroid/widget/ArrayAdapter;->clear()V

    .line 154
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 156
    .local v2, "f":Ljava/io/File;
    iget-object v6, p0, Lkdk/android/simplydo/RestoreActivity;->adapter:Landroid/widget/ArrayAdapter;

    new-instance v7, Lkdk/android/simplydo/RestoreActivity$NameOnlyFile;

    invoke-direct {v7, v2}, Lkdk/android/simplydo/RestoreActivity$NameOnlyFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v6, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 154
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 158
    .end local v2    # "f":Ljava/io/File;
    :cond_0
    iget-object v6, p0, Lkdk/android/simplydo/RestoreActivity;->adapter:Landroid/widget/ArrayAdapter;

    iget-object v7, p0, Lkdk/android/simplydo/RestoreActivity;->comparator:Ljava/util/Comparator;

    invoke-virtual {v6, v7}, Landroid/widget/ArrayAdapter;->sort(Ljava/util/Comparator;)V

    .line 159
    iget-object v6, p0, Lkdk/android/simplydo/RestoreActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 160
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const-string v0, "SimplyDo"

    const-string v1, "RestoreActivity.onCreate() called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f030007

    const v2, 0x7f080014

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lkdk/android/simplydo/RestoreActivity;->adapter:Landroid/widget/ArrayAdapter;

    .line 78
    invoke-direct {p0}, Lkdk/android/simplydo/RestoreActivity;->refresh()V

    .line 80
    iget-object v0, p0, Lkdk/android/simplydo/RestoreActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v0}, Lkdk/android/simplydo/RestoreActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lkdk/android/simplydo/RestoreActivity;->restoreWarningBuilder:Landroid/app/AlertDialog$Builder;

    .line 83
    iget-object v0, p0, Lkdk/android/simplydo/RestoreActivity;->restoreWarningBuilder:Landroid/app/AlertDialog$Builder;

    const-string v1, "This will overwrite all the existing lists and items. Continue?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Restore database"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Yes"

    new-instance v2, Lkdk/android/simplydo/RestoreActivity$4;

    invoke-direct {v2, p0}, Lkdk/android/simplydo/RestoreActivity$4;-><init>(Lkdk/android/simplydo/RestoreActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "No"

    new-instance v2, Lkdk/android/simplydo/RestoreActivity$3;

    invoke-direct {v2, p0}, Lkdk/android/simplydo/RestoreActivity$3;-><init>(Lkdk/android/simplydo/RestoreActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 98
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 104
    const-string v1, "SimplyDo"

    const-string v2, "RestoreActivity.onCreateDialog() called"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    packed-switch p1, :pswitch_data_0

    .line 115
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 110
    :pswitch_0
    iget-object v1, p0, Lkdk/android/simplydo/RestoreActivity;->restoreWarningBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 111
    .local v0, "dialog":Landroid/app/AlertDialog;
    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v6, 0x1

    .line 121
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 123
    const-string v3, "SimplyDo"

    const-string v4, "RestoreActivity.onListItemClick()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v3, p0, Lkdk/android/simplydo/RestoreActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkdk/android/simplydo/RestoreActivity$NameOnlyFile;

    iput-object v3, p0, Lkdk/android/simplydo/RestoreActivity;->restoreFile:Lkdk/android/simplydo/RestoreActivity$NameOnlyFile;

    .line 130
    :try_start_0
    iget-object v3, p0, Lkdk/android/simplydo/RestoreActivity;->restoreFile:Lkdk/android/simplydo/RestoreActivity$NameOnlyFile;

    iget-object v3, v3, Lkdk/android/simplydo/RestoreActivity$NameOnlyFile;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 132
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 135
    const/16 v3, 0x12c

    invoke-virtual {p0, v3}, Lkdk/android/simplydo/RestoreActivity;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "SimplyDo"

    const-string v4, "Error testing user selected restore DB"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    const-string v3, "That database was invalid or corrupted! Not restored."

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 141
    .local v2, "t":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
