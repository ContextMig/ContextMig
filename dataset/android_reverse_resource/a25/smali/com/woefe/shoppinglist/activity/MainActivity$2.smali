.class Lcom/woefe/shoppinglist/activity/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woefe/shoppinglist/activity/MainActivity;->onServiceConnected(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woefe/shoppinglist/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/woefe/shoppinglist/activity/MainActivity;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/woefe/shoppinglist/activity/MainActivity$2;->this$0:Lcom/woefe/shoppinglist/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 145
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/MainActivity$2;->this$0:Lcom/woefe/shoppinglist/activity/MainActivity;

    invoke-static {p1}, Lcom/woefe/shoppinglist/activity/MainActivity;->access$100(Lcom/woefe/shoppinglist/activity/MainActivity;)V

    return-void
.end method
