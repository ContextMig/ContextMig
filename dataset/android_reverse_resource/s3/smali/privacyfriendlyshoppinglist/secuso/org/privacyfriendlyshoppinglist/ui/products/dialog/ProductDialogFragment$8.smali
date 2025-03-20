.class Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment$8;
.super Ljava/lang/Object;
.source "ProductDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment$8;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3e7898add3edd2d2L    # 9.162873924695128E-8

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment$8"

    const/16 v3, 0x12

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment$8;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;Landroid/app/AlertDialog;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment$8;->$jacocoInit()[Z

    move-result-object v0

    .line 320
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment$8;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;

    iput-object p2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment$8;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$0(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment$8;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment$8;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment$8;->lambda$onClick$0()V

    const/16 v1, 0x11

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private synthetic lambda$onClick$0()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment$8;->$jacocoInit()[Z

    move-result-object v1

    .line 340
    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment$8;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;

    invoke-static {v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;->access$200(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductActivityCache;

    move-result-object v0

    invoke-virtual {v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductActivityCache;->getActivity()Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    check-cast v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductsActivity;

    const/16 v2, 0xf

    aput-boolean v3, v1, v2

    .line 341
    invoke-virtual {v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductsActivity;->updateListView()V

    .line 342
    const/16 v0, 0x10

    aput-boolean v3, v1, v0

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment$8;->$jacocoInit()[Z

    move-result-object v0

    .line 324
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment$8;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;

    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;->access$000(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogCache;

    move-result-object v1

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogCache;->getProductName()Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-boolean v4, v0, v4

    .line 325
    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    .line 327
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment$8;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090023

    invoke-static {v1, v2, v4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/MessageUtils;->showToast(Landroid/content/Context;II)V

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    .line 346
    :goto_0
    const/16 v1, 0xe

    aput-boolean v4, v0, v1

    return-void

    .line 331
    :cond_0
    invoke-static {v4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;->access$602(Z)Z

    const/4 v2, 0x4

    aput-boolean v4, v0, v2

    .line 332
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment$8;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;

    invoke-static {v2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;->access$700(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;Ljava/lang/String;)V

    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    .line 333
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment$8;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;

    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;->access$400(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;

    move-result-object v1

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x6

    aput-boolean v4, v0, v1

    .line 337
    :goto_1
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment$8;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;

    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;->access$900(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;

    move-result-object v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment$8;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;

    invoke-static {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;->access$400(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;

    move-result-object v2

    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment$8;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;

    invoke-static {v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;->access$200(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductActivityCache;

    move-result-object v3

    invoke-virtual {v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductActivityCache;->getListId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;->saveOrUpdate(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;Ljava/lang/String;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment$8$$Lambda$1;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment$8;)Lrx/functions/Action0;

    move-result-object v2

    const/16 v3, 0xa

    aput-boolean v4, v0, v3

    .line 338
    invoke-virtual {v1, v2}, Lrx/Observable;->doOnCompleted(Lrx/functions/Action0;)Lrx/Observable;

    move-result-object v1

    const/16 v2, 0xb

    aput-boolean v4, v0, v2

    .line 343
    invoke-virtual {v1}, Lrx/Observable;->subscribe()Lrx/Subscription;

    const/16 v1, 0xc

    aput-boolean v4, v0, v1

    .line 344
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment$8;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    const/16 v1, 0xd

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 333
    :cond_1
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment$8;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;

    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;->access$200(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductActivityCache;

    move-result-object v1

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductActivityCache;->getStatisticsEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    aput-boolean v4, v0, v1

    .line 335
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment$8;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;

    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;->access$800(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/StatisticsService;

    move-result-object v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment$8;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;

    invoke-static {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;->access$400(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;

    move-result-object v2

    invoke-interface {v1, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/StatisticsService;->saveRecord(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)Lrx/Observable;

    move-result-object v1

    invoke-virtual {v1}, Lrx/Observable;->subscribe()Lrx/Subscription;

    const/16 v1, 0x9

    aput-boolean v4, v0, v1

    goto :goto_1
.end method
