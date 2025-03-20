.class public Lcom/woefe/shoppinglist/dialog/DirectoryChooser;
.super Landroid/support/v7/app/AppCompatActivity;
.source "DirectoryChooser.java"

# interfaces
.implements Lcom/woefe/shoppinglist/dialog/TextInputDialog$TextInputDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woefe/shoppinglist/dialog/DirectoryChooser$NewDirectoryDialog;
    }
.end annotation


# static fields
.field private static final ACTION_READ_INPUT:I = 0x1

.field private static final KEY_CURRENT_DIR:Ljava/lang/String; = "CURRENT_DIR"

.field private static final PARENT_DIR:Ljava/lang/String; = ".."

.field private static final REQUEST_CODE_EXT_STORAGE:I = 0x2

.field public static final SELECTED_PATH:Ljava/lang/String; = "SELECTED_PATH"


# instance fields
.field private currentDirectory:Ljava/io/File;

.field private directoryViewAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private accept()V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->currentDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Cannot write to directory"

    const/4 v1, 0x1

    .line 177
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 181
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "SELECTED_PATH"

    .line 182
    iget-object v2, p0, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->currentDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 183
    invoke-virtual {p0, v1, v0}, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->setResult(ILandroid/content/Intent;)V

    .line 184
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->finish()V

    return-void
.end method

.method static synthetic access$000(Lcom/woefe/shoppinglist/dialog/DirectoryChooser;)Landroid/widget/ArrayAdapter;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->directoryViewAdapter:Landroid/widget/ArrayAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/woefe/shoppinglist/dialog/DirectoryChooser;)Ljava/io/File;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->currentDirectory:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$200(Lcom/woefe/shoppinglist/dialog/DirectoryChooser;Ljava/io/File;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->changeDirectory(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$300(Lcom/woefe/shoppinglist/dialog/DirectoryChooser;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->accept()V

    return-void
.end method

.method static synthetic access$400(Lcom/woefe/shoppinglist/dialog/DirectoryChooser;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->cancel()V

    return-void
.end method

.method static synthetic access$500(Lcom/woefe/shoppinglist/dialog/DirectoryChooser;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->chooseStorageLocation()V

    return-void
.end method

.method static synthetic access$600(Lcom/woefe/shoppinglist/dialog/DirectoryChooser;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->createNewDir()V

    return-void
.end method

.method private cancel()V
    .locals 1

    const/4 v0, 0x0

    .line 188
    invoke-virtual {p0, v0}, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->setResult(I)V

    .line 189
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->finish()V

    return-void
.end method

.method private changeDirectory(Ljava/io/File;)V
    .locals 6

    if-eqz p1, :cond_3

    .line 246
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 247
    invoke-virtual {p1}, Ljava/io/File;->canExecute()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 253
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 254
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 255
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 256
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 260
    :cond_2
    new-instance v1, Lcom/woefe/shoppinglist/dialog/DirectoryChooser$7;

    invoke-direct {v1, p0}, Lcom/woefe/shoppinglist/dialog/DirectoryChooser$7;-><init>(Lcom/woefe/shoppinglist/dialog/DirectoryChooser;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 267
    iget-object v1, p0, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v1, p0, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->directoryViewAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 269
    iget-object v1, p0, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->directoryViewAdapter:Landroid/widget/ArrayAdapter;

    const-string v2, ".."

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 270
    iget-object v1, p0, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->directoryViewAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 271
    iput-object p1, p0, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->currentDirectory:Ljava/io/File;

    return-void

    :cond_3
    :goto_1
    const p1, 0x7f0d005b

    const/4 v0, 0x1

    .line 249
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private chooseStorageLocation()V
    .locals 5

    .line 203
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 204
    invoke-direct {p0}, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->listStorageLocations()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    .line 205
    array-length v3, v1

    new-array v3, v3, [Ljava/lang/String;

    .line 206
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 207
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const v2, 0x7f0d0050

    .line 210
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/woefe/shoppinglist/dialog/DirectoryChooser$6;

    invoke-direct {v2, p0, v1}, Lcom/woefe/shoppinglist/dialog/DirectoryChooser$6;-><init>(Lcom/woefe/shoppinglist/dialog/DirectoryChooser;[Ljava/io/File;)V

    .line 211
    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private createNewDir()V
    .locals 2

    .line 193
    new-instance v0, Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;

    const-class v1, Lcom/woefe/shoppinglist/dialog/DirectoryChooser$NewDirectoryDialog;

    invoke-direct {v0, p0, v1}, Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Class;)V

    const/4 v1, 0x1

    .line 196
    invoke-virtual {v0, v1}, Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;->setAction(I)Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0032

    .line 197
    invoke-virtual {v0, v1}, Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;->setMessage(I)Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    .line 198
    invoke-virtual {v0, v1}, Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;->setHint(I)Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;->show()V

    return-void
.end method

.method private listStorageLocations()[Ljava/io/File;
    .locals 5

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 227
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 228
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 229
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    if-eqz v2, :cond_1

    const-string v3, "mounted"

    .line 231
    invoke-static {v2}, Landroid/os/Environment;->getStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 232
    invoke-virtual {v2}, Ljava/io/File;->canExecute()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 233
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_0

    .line 235
    :cond_1
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 239
    :cond_2
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/io/File;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 70
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a002b

    .line 71
    invoke-virtual {p0, v0}, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->setContentView(I)V

    .line 73
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f0a002d

    invoke-direct {v0, p0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->directoryViewAdapter:Landroid/widget/ArrayAdapter;

    const v0, 0x7f08004b

    .line 74
    invoke-virtual {p0, v0}, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 75
    new-instance v1, Lcom/woefe/shoppinglist/dialog/DirectoryChooser$1;

    invoke-direct {v1, p0}, Lcom/woefe/shoppinglist/dialog/DirectoryChooser$1;-><init>(Lcom/woefe/shoppinglist/dialog/DirectoryChooser;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 88
    iget-object v1, p0, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->directoryViewAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f080032

    .line 91
    invoke-virtual {p0, v0}, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 92
    new-instance v1, Lcom/woefe/shoppinglist/dialog/DirectoryChooser$2;

    invoke-direct {v1, p0}, Lcom/woefe/shoppinglist/dialog/DirectoryChooser$2;-><init>(Lcom/woefe/shoppinglist/dialog/DirectoryChooser;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080031

    .line 99
    invoke-virtual {p0, v0}, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 100
    new-instance v1, Lcom/woefe/shoppinglist/dialog/DirectoryChooser$3;

    invoke-direct {v1, p0}, Lcom/woefe/shoppinglist/dialog/DirectoryChooser$3;-><init>(Lcom/woefe/shoppinglist/dialog/DirectoryChooser;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080030

    .line 107
    invoke-virtual {p0, v0}, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 108
    new-instance v1, Lcom/woefe/shoppinglist/dialog/DirectoryChooser$4;

    invoke-direct {v1, p0}, Lcom/woefe/shoppinglist/dialog/DirectoryChooser$4;-><init>(Lcom/woefe/shoppinglist/dialog/DirectoryChooser;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080058

    .line 115
    invoke-virtual {p0, v0}, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    .line 116
    new-instance v1, Lcom/woefe/shoppinglist/dialog/DirectoryChooser$5;

    invoke-direct {v1, p0}, Lcom/woefe/shoppinglist/dialog/DirectoryChooser$5;-><init>(Lcom/woefe/shoppinglist/dialog/DirectoryChooser;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800c4

    .line 123
    invoke-virtual {p0, v0}, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->title:Landroid/widget/TextView;

    .line 127
    invoke-direct {p0}, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->listStorageLocations()[Ljava/io/File;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "CURRENT_DIR"

    .line 130
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 132
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_0
    array-length p1, v0

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 134
    aget-object v0, v0, p1

    goto :goto_0

    .line 136
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string p1, ""

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    :goto_0
    invoke-direct {p0, v0}, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->changeDirectory(Ljava/io/File;)V

    return-void
.end method

.method public onInputComplete(Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 159
    new-instance p2, Ljava/io/File;

    iget-object v1, p0, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->currentDirectory:Ljava/io/File;

    invoke-direct {p2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-direct {p0, p2}, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->changeDirectory(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    const p2, 0x7f0d003a

    .line 164
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, p2, v1}, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "CURRENT_DIR"

    .line 171
    iget-object v1, p0, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->currentDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 144
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 146
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 150
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
