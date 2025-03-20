.class Lcom/woefe/shoppinglist/dialog/DirectoryChooser$1;
.super Ljava/lang/Object;
.source "DirectoryChooser.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woefe/shoppinglist/dialog/DirectoryChooser;


# direct methods
.method constructor <init>(Lcom/woefe/shoppinglist/dialog/DirectoryChooser;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/woefe/shoppinglist/dialog/DirectoryChooser$1;->this$0:Lcom/woefe/shoppinglist/dialog/DirectoryChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 78
    iget-object p1, p0, Lcom/woefe/shoppinglist/dialog/DirectoryChooser$1;->this$0:Lcom/woefe/shoppinglist/dialog/DirectoryChooser;

    invoke-static {p1}, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->access$000(Lcom/woefe/shoppinglist/dialog/DirectoryChooser;)Landroid/widget/ArrayAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string p2, ".."

    .line 80
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 81
    iget-object p1, p0, Lcom/woefe/shoppinglist/dialog/DirectoryChooser$1;->this$0:Lcom/woefe/shoppinglist/dialog/DirectoryChooser;

    iget-object p2, p0, Lcom/woefe/shoppinglist/dialog/DirectoryChooser$1;->this$0:Lcom/woefe/shoppinglist/dialog/DirectoryChooser;

    invoke-static {p2}, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->access$100(Lcom/woefe/shoppinglist/dialog/DirectoryChooser;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->access$200(Lcom/woefe/shoppinglist/dialog/DirectoryChooser;Ljava/io/File;)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object p2, p0, Lcom/woefe/shoppinglist/dialog/DirectoryChooser$1;->this$0:Lcom/woefe/shoppinglist/dialog/DirectoryChooser;

    new-instance p3, Ljava/io/File;

    iget-object p4, p0, Lcom/woefe/shoppinglist/dialog/DirectoryChooser$1;->this$0:Lcom/woefe/shoppinglist/dialog/DirectoryChooser;

    invoke-static {p4}, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->access$100(Lcom/woefe/shoppinglist/dialog/DirectoryChooser;)Ljava/io/File;

    move-result-object p4

    invoke-direct {p3, p4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p2, p3}, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->access$200(Lcom/woefe/shoppinglist/dialog/DirectoryChooser;Ljava/io/File;)V

    :cond_1
    :goto_0
    return-void
.end method
