.class Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment$2;
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


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x42ac6310c487f99bL    # -2.7871785441683233E-13

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment$2"

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment$2;->$jacocoInit()[Z

    move-result-object v0

    .line 199
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment$2;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;

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

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment$2;->$jacocoInit()[Z

    move-result-object v1

    .line 203
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment$2;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;

    invoke-static {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;->access$000(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogCache;

    move-result-object v2

    invoke-virtual {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogCache;->getQuantity()Landroid/support/design/widget/TextInputEditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    aput-boolean v4, v1, v4

    .line 205
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment$2;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;

    invoke-static {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;->access$000(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogCache;

    move-result-object v2

    invoke-virtual {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogCache;->getQuantity()Landroid/support/design/widget/TextInputEditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 207
    .local v0, "value":I
    if-gtz v0, :cond_0

    const/4 v2, 0x2

    aput-boolean v4, v1, v2

    .line 213
    :goto_0
    const/4 v2, 0x6

    aput-boolean v4, v1, v2

    .line 218
    .end local v0    # "value":I
    :goto_1
    const/16 v2, 0x8

    aput-boolean v4, v1, v2

    return-void

    .line 209
    .restart local v0    # "value":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x3

    aput-boolean v4, v1, v2

    .line 210
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-boolean v4, v1, v3

    .line 211
    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment$2;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;

    invoke-static {v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;->access$000(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogCache;

    move-result-object v3

    invoke-virtual {v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogCache;->getQuantity()Landroid/support/design/widget/TextInputEditText;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/design/widget/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x5

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 216
    .end local v0    # "value":I
    :cond_1
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment$2;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;

    invoke-static {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;->access$000(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogFragment;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogCache;

    move-result-object v2

    invoke-virtual {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogCache;->getQuantity()Landroid/support/design/widget/TextInputEditText;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x7

    aput-boolean v4, v1, v2

    goto :goto_1
.end method
