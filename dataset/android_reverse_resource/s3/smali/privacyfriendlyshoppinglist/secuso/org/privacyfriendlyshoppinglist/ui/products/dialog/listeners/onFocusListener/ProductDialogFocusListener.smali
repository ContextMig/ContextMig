.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/listeners/onFocusListener/ProductDialogFocusListener;
.super Ljava/lang/Object;
.source "ProductDialogFocusListener.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private dialogCache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogCache;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/listeners/onFocusListener/ProductDialogFocusListener;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x40f285e3b054bcd4L    # -5.6222905148955955E-5

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/listeners/onFocusListener/ProductDialogFocusListener"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/listeners/onFocusListener/ProductDialogFocusListener;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogCache;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/listeners/onFocusListener/ProductDialogFocusListener;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/listeners/onFocusListener/ProductDialogFocusListener;->dialogCache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogCache;

    .line 17
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/listeners/onFocusListener/ProductDialogFocusListener;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    if-nez p2, :cond_0

    aput-boolean v3, v0, v3

    .line 28
    :goto_0
    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    return-void

    .line 23
    :cond_0
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 25
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/listeners/onFocusListener/ProductDialogFocusListener;->dialogCache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogCache;

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogCache;->getExpandableLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 26
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/listeners/onFocusListener/ProductDialogFocusListener;->dialogCache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogCache;

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogCache;->getExpandableImageView()Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020077

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    goto :goto_0
.end method
