.class Lcom/woefe/shoppinglist/dialog/TextInputDialog$1;
.super Ljava/lang/Object;
.source "TextInputDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woefe/shoppinglist/dialog/TextInputDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woefe/shoppinglist/dialog/TextInputDialog;


# direct methods
.method constructor <init>(Lcom/woefe/shoppinglist/dialog/TextInputDialog;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog$1;->this$0:Lcom/woefe/shoppinglist/dialog/TextInputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 97
    iget-object p1, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog$1;->this$0:Lcom/woefe/shoppinglist/dialog/TextInputDialog;

    invoke-static {p1}, Lcom/woefe/shoppinglist/dialog/TextInputDialog;->access$000(Lcom/woefe/shoppinglist/dialog/TextInputDialog;)V

    const/4 p1, 0x1

    return p1
.end method
