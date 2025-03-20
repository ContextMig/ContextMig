.class Lcom/woefe/shoppinglist/dialog/TextInputDialog$2;
.super Ljava/lang/Object;
.source "TextInputDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 102
    iput-object p1, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog$2;->this$0:Lcom/woefe/shoppinglist/dialog/TextInputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 105
    iget-object p1, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog$2;->this$0:Lcom/woefe/shoppinglist/dialog/TextInputDialog;

    invoke-virtual {p1}, Lcom/woefe/shoppinglist/dialog/TextInputDialog;->dismiss()V

    return-void
.end method
