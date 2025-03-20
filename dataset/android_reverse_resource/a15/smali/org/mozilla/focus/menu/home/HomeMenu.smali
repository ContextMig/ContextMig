.class public final Lorg/mozilla/focus/menu/home/HomeMenu;
.super Landroid/widget/PopupWindow;
.source "HomeMenu.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHomeMenu.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeMenu.kt\norg/mozilla/focus/menu/home/HomeMenu\n*L\n1#1,56:1\n*E\n"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final listener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x2

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "listener"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    iput-object p1, p0, Lorg/mozilla/focus/menu/home/HomeMenu;->context:Landroid/content/Context;

    iput-object p2, p0, Lorg/mozilla/focus/menu/home/HomeMenu;->listener:Landroid/view/View$OnClickListener;

    .line 27
    iget-object v1, p0, Lorg/mozilla/focus/menu/home/HomeMenu;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0046

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mozilla/focus/menu/home/HomeMenu;->setContentView(Landroid/view/View;)V

    .line 29
    invoke-virtual {p0}, Lorg/mozilla/focus/menu/home/HomeMenu;->getContentView()Landroid/view/View;

    move-result-object v1

    const-string v2, "contentView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lorg/mozilla/focus/R$id;->list:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 30
    .local v0, "$receiver":Landroid/support/v7/widget/RecyclerView;
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v6, v5}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 31
    new-instance v2, Lorg/mozilla/focus/menu/home/HomeMenuAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v1, "context"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-direct {v2, v3, v1}, Lorg/mozilla/focus/menu/home/HomeMenuAdapter;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    move-object v1, v2

    check-cast v1, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 32
    nop

    .line 29
    nop

    .line 34
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lorg/mozilla/focus/menu/home/HomeMenu;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    invoke-virtual {p0, v6}, Lorg/mozilla/focus/menu/home/HomeMenu;->setFocusable(Z)V

    .line 38
    invoke-virtual {p0, v4}, Lorg/mozilla/focus/menu/home/HomeMenu;->setHeight(I)V

    .line 39
    invoke-virtual {p0, v4}, Lorg/mozilla/focus/menu/home/HomeMenu;->setWidth(I)V

    .line 41
    iget-object v1, p0, Lorg/mozilla/focus/menu/home/HomeMenu;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0, v1}, Lorg/mozilla/focus/menu/home/HomeMenu;->setElevation(F)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 51
    invoke-virtual {p0}, Lorg/mozilla/focus/menu/home/HomeMenu;->dismiss()V

    .line 53
    iget-object v0, p0, Lorg/mozilla/focus/menu/home/HomeMenu;->listener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 54
    return-void
.end method

.method public final show(Landroid/view/View;)V
    .locals 3
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    const-string v1, "anchor"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-static {p1}, Lorg/mozilla/focus/utils/ViewUtils;->isRTL(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v0, v1

    .line 47
    .local v0, "xOffset":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    neg-int v1, v1

    invoke-super {p0, p1, v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 48
    return-void

    .line 45
    .end local v0    # "xOffset":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
