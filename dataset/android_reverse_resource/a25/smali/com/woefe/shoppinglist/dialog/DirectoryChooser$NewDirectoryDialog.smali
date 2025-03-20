.class public Lcom/woefe/shoppinglist/dialog/DirectoryChooser$NewDirectoryDialog;
.super Lcom/woefe/shoppinglist/dialog/TextInputDialog;
.source "DirectoryChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woefe/shoppinglist/dialog/DirectoryChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewDirectoryDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 274
    invoke-direct {p0}, Lcom/woefe/shoppinglist/dialog/TextInputDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public onValidateInput(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "/"

    .line 277
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-nez p1, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/dialog/DirectoryChooser$NewDirectoryDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d003b

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return p1
.end method
