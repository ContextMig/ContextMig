.class public final Lorg/mozilla/focus/menu/home/HomeMenuAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "HomeMenuAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/focus/menu/home/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lorg/mozilla/focus/menu/home/HomeMenuAdapter;->listener:Landroid/view/View$OnClickListener;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/mozilla/focus/menu/home/MenuItem;

    .line 27
    const/4 v1, 0x0

    new-instance v2, Lorg/mozilla/focus/menu/home/MenuItem;

    const v3, 0x7f090136

    sget-object v4, Lorg/mozilla/focus/menu/home/WhatsNewViewHolder;->Companion:Lorg/mozilla/focus/menu/home/WhatsNewViewHolder$Companion;

    invoke-virtual {v4}, Lorg/mozilla/focus/menu/home/WhatsNewViewHolder$Companion;->getLAYOUT_ID()I

    move-result v4

    const v5, 0x7f0f0098

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "context.getString(R.string.menu_whats_new)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lorg/mozilla/focus/menu/home/MenuItem;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    .line 28
    const/4 v1, 0x1

    new-instance v2, Lorg/mozilla/focus/menu/home/MenuItem;

    const v3, 0x7f090080

    sget-object v4, Lorg/mozilla/focus/menu/home/MenuItemViewHolder;->Companion:Lorg/mozilla/focus/menu/home/MenuItemViewHolder$Companion;

    invoke-virtual {v4}, Lorg/mozilla/focus/menu/home/MenuItemViewHolder$Companion;->getLAYOUT_ID()I

    move-result v4

    const v5, 0x7f0f0090

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "context.getString(R.string.menu_help)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lorg/mozilla/focus/menu/home/MenuItem;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    .line 29
    const/4 v1, 0x2

    new-instance v2, Lorg/mozilla/focus/menu/home/MenuItem;

    const v3, 0x7f0900f0

    sget-object v4, Lorg/mozilla/focus/menu/home/MenuItemViewHolder;->Companion:Lorg/mozilla/focus/menu/home/MenuItemViewHolder$Companion;

    invoke-virtual {v4}, Lorg/mozilla/focus/menu/home/MenuItemViewHolder$Companion;->getLAYOUT_ID()I

    move-result v4

    const v5, 0x7f0f0095

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "context.getString(R.string.menu_settings)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lorg/mozilla/focus/menu/home/MenuItem;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    .line 26
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/focus/menu/home/HomeMenuAdapter;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/mozilla/focus/menu/home/HomeMenuAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lorg/mozilla/focus/menu/home/HomeMenuAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/menu/home/MenuItem;

    invoke-virtual {v0}, Lorg/mozilla/focus/menu/home/MenuItem;->getViewType()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    instance-of v0, p1, Lorg/mozilla/focus/menu/home/MenuItemViewHolder;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/mozilla/focus/menu/home/MenuItemViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v0, p0, Lorg/mozilla/focus/menu/home/HomeMenuAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/menu/home/MenuItem;

    invoke-virtual {p1, v0}, Lorg/mozilla/focus/menu/home/MenuItemViewHolder;->bind(Lorg/mozilla/focus/menu/home/MenuItem;)V

    .line 47
    :goto_0
    return-void

    .line 45
    .restart local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_0
    instance-of v0, p1, Lorg/mozilla/focus/menu/home/WhatsNewViewHolder;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/mozilla/focus/menu/home/WhatsNewViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p1}, Lorg/mozilla/focus/menu/home/WhatsNewViewHolder;->bind()V

    goto :goto_0

    .line 46
    .restart local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown view holder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const-string v1, "parent"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 36
    .local v0, "view":Landroid/view/View;
    sget-object v1, Lorg/mozilla/focus/menu/home/WhatsNewViewHolder;->Companion:Lorg/mozilla/focus/menu/home/WhatsNewViewHolder$Companion;

    invoke-virtual {v1}, Lorg/mozilla/focus/menu/home/WhatsNewViewHolder$Companion;->getLAYOUT_ID()I

    move-result v1

    if-ne p2, v1, :cond_0

    new-instance v1, Lorg/mozilla/focus/menu/home/WhatsNewViewHolder;

    const-string v2, "view"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/mozilla/focus/menu/home/HomeMenuAdapter;->listener:Landroid/view/View$OnClickListener;

    invoke-direct {v1, v0, v2}, Lorg/mozilla/focus/menu/home/WhatsNewViewHolder;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 35
    .end local v0    # "view":Landroid/view/View;
    :goto_0
    return-object v1

    .line 37
    .restart local v0    # "view":Landroid/view/View;
    :cond_0
    sget-object v1, Lorg/mozilla/focus/menu/home/MenuItemViewHolder;->Companion:Lorg/mozilla/focus/menu/home/MenuItemViewHolder$Companion;

    invoke-virtual {v1}, Lorg/mozilla/focus/menu/home/MenuItemViewHolder$Companion;->getLAYOUT_ID()I

    move-result v1

    if-ne p2, v1, :cond_2

    new-instance v1, Lorg/mozilla/focus/menu/home/MenuItemViewHolder;

    if-nez v0, :cond_1

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/mozilla/focus/menu/home/HomeMenuAdapter;->listener:Landroid/view/View$OnClickListener;

    invoke-direct {v1, v0, v2}, Lorg/mozilla/focus/menu/home/MenuItemViewHolder;-><init>(Landroid/widget/TextView;Landroid/view/View$OnClickListener;)V

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 38
    .restart local v0    # "view":Landroid/view/View;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown view type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method
