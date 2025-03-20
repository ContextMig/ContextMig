.class Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog$5;
.super Ljava/lang/Object;
.source "EditDeleteListDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog;->getResetCheckedItemsOnClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog$5;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x410e8f5631c99852L    # -1.66321668878322E-5

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog$5"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog$5;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog$5;->$jacocoInit()[Z

    move-result-object v0

    .line 182
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog$5;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$0(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog$5;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog$5;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog$5;->lambda$onClick$0()V

    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private synthetic lambda$onClick$0()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog$5;->$jacocoInit()[Z

    move-result-object v1

    .line 190
    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog$5;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog;

    invoke-static {v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog;->access$200(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/ShoppingListActivityCache;

    move-result-object v0

    invoke-virtual {v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/ShoppingListActivityCache;->getActivity()Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    check-cast v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/MainActivity;

    const/4 v2, 0x5

    aput-boolean v3, v1, v2

    .line 191
    invoke-virtual {v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/MainActivity;->updateListView()V

    .line 192
    const/4 v0, 0x6

    aput-boolean v3, v1, v0

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog$5;->$jacocoInit()[Z

    move-result-object v0

    .line 186
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog$5;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog;

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog;->dismiss()V

    aput-boolean v4, v0, v4

    .line 187
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog$5;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog;

    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog;->access$300(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;

    move-result-object v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog$5;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog;

    invoke-static {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog;->access$000(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;

    move-result-object v2

    invoke-virtual {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;->resetCheckedProducts(Ljava/lang/String;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog$5$$Lambda$1;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog$5;)Lrx/functions/Action0;

    move-result-object v2

    const/4 v3, 0x2

    aput-boolean v4, v0, v3

    .line 188
    invoke-virtual {v1, v2}, Lrx/Observable;->doOnCompleted(Lrx/functions/Action0;)Lrx/Observable;

    move-result-object v1

    const/4 v2, 0x3

    aput-boolean v4, v0, v2

    .line 193
    invoke-virtual {v1}, Lrx/Observable;->subscribe()Lrx/Subscription;

    .line 194
    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    return-void
.end method
