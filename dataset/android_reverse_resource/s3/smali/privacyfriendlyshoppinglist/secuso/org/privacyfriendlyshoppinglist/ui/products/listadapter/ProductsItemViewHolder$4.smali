.class Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductsItemViewHolder$4;
.super Ljava/lang/Object;
.source "ProductsItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductsItemViewHolder;->processItem(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductsItemViewHolder;

.field final synthetic val$item:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductsItemViewHolder$4;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0xfbd768b77912f59L    # -5.755785206843929E232

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductsItemViewHolder$4"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductsItemViewHolder$4;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductsItemViewHolder;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductsItemViewHolder$4;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductsItemViewHolder$4;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductsItemViewHolder;

    iput-object p2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductsItemViewHolder$4;->val$item:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductsItemViewHolder$4;->$jacocoInit()[Z

    move-result-object v1

    .line 133
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    aput-boolean v4, v1, v4

    .line 139
    :goto_0
    const/4 v0, 0x5

    aput-boolean v4, v1, v0

    return-void

    .line 133
    :cond_0
    const/4 v0, 0x2

    aput-boolean v4, v1, v0

    .line 135
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductsItemViewHolder$4;->val$item:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;

    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductsItemViewHolder$4;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductsItemViewHolder;

    invoke-static {v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductsItemViewHolder;->access$900(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductsItemViewHolder;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/business/PFACache;

    move-result-object v0

    check-cast v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductActivityCache;

    invoke-static {v2, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;->newEditDialogInstance(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductActivityCache;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;

    move-result-object v2

    const/4 v0, 0x3

    aput-boolean v4, v1, v0

    .line 136
    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductsItemViewHolder$4;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductsItemViewHolder;

    invoke-static {v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductsItemViewHolder;->access$1000(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listadapter/ProductsItemViewHolder;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/business/PFACache;

    move-result-object v0

    check-cast v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductActivityCache;

    invoke-virtual {v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductActivityCache;->getActivity()Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v3, "Product"

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    const/4 v0, 0x4

    aput-boolean v4, v1, v0

    goto :goto_0
.end method
