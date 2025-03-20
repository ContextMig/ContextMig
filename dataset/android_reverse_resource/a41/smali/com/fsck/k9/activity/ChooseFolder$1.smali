.class Lcom/fsck/k9/activity/ChooseFolder$1;
.super Landroid/widget/ArrayAdapter;
.source "ChooseFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/ChooseFolder;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private myFilter:Landroid/widget/Filter;

.field final synthetic this$0:Lcom/fsck/k9/activity/ChooseFolder;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/ChooseFolder;Landroid/content/Context;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/fsck/k9/activity/ChooseFolder;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .prologue
    .line 104
    iput-object p1, p0, Lcom/fsck/k9/activity/ChooseFolder$1;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/activity/ChooseFolder$1;->myFilter:Landroid/widget/Filter;

    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/fsck/k9/activity/ChooseFolder$1;->myFilter:Landroid/widget/Filter;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/fsck/k9/activity/FolderListFilter;

    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/FolderListFilter;-><init>(Landroid/widget/ArrayAdapter;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/ChooseFolder$1;->myFilter:Landroid/widget/Filter;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/ChooseFolder$1;->myFilter:Landroid/widget/Filter;

    return-object v0
.end method
