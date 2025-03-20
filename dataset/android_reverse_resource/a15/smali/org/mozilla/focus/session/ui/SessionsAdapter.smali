.class public Lorg/mozilla/focus/session/ui/SessionsAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SessionsAdapter.java"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;",
        "Landroid/arch/lifecycle/Observer",
        "<",
        "Ljava/util/List",
        "<",
        "Lorg/mozilla/focus/session/Session;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final fragment:Lorg/mozilla/focus/session/ui/SessionsSheetFragment;

.field private sessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/focus/session/Session;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/mozilla/focus/session/ui/SessionsSheetFragment;)V
    .locals 1
    .param p1, "fragment"    # Lorg/mozilla/focus/session/ui/SessionsSheetFragment;

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/mozilla/focus/session/ui/SessionsAdapter;->fragment:Lorg/mozilla/focus/session/ui/SessionsSheetFragment;

    .line 28
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/focus/session/ui/SessionsAdapter;->sessions:Ljava/util/List;

    .line 29
    return-void
.end method

.method private isErasePosition(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lorg/mozilla/focus/session/ui/SessionsAdapter;->sessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/mozilla/focus/session/ui/SessionsAdapter;->sessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lorg/mozilla/focus/session/ui/SessionsAdapter;->isErasePosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const v0, 0x7f0b0042

    .line 68
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0b0045

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 59
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown viewType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :pswitch_1
    check-cast p1, Lorg/mozilla/focus/session/ui/SessionViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v0, p0, Lorg/mozilla/focus/session/ui/SessionsAdapter;->sessions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/session/Session;

    invoke-virtual {p1, v0}, Lorg/mozilla/focus/session/ui/SessionViewHolder;->bind(Lorg/mozilla/focus/session/Session;)V

    .line 61
    :pswitch_2
    return-void

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0042
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/mozilla/focus/session/ui/SessionsAdapter;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/focus/session/Session;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "sessions":Ljava/util/List;, "Ljava/util/List<Lorg/mozilla/focus/session/Session;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/mozilla/focus/session/ui/SessionsAdapter;->sessions:Ljava/util/List;

    .line 84
    invoke-virtual {p0}, Lorg/mozilla/focus/session/ui/SessionsAdapter;->notifyDataSetChanged()V

    .line 85
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v4, 0x0

    .line 33
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 35
    .local v0, "inflater":Landroid/view/LayoutInflater;
    packed-switch p2, :pswitch_data_0

    .line 45
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unknown viewType"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37
    :pswitch_1
    new-instance v1, Lorg/mozilla/focus/session/ui/EraseViewHolder;

    iget-object v2, p0, Lorg/mozilla/focus/session/ui/SessionsAdapter;->fragment:Lorg/mozilla/focus/session/ui/SessionsSheetFragment;

    const v3, 0x7f0b0042

    .line 39
    invoke-virtual {v0, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/mozilla/focus/session/ui/EraseViewHolder;-><init>(Lorg/mozilla/focus/session/ui/SessionsSheetFragment;Landroid/view/View;)V

    .line 41
    :goto_0
    return-object v1

    :pswitch_2
    new-instance v2, Lorg/mozilla/focus/session/ui/SessionViewHolder;

    iget-object v3, p0, Lorg/mozilla/focus/session/ui/SessionsAdapter;->fragment:Lorg/mozilla/focus/session/ui/SessionsSheetFragment;

    const v1, 0x7f0b0045

    .line 43
    invoke-virtual {v0, v1, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v2, v3, v1}, Lorg/mozilla/focus/session/ui/SessionViewHolder;-><init>(Lorg/mozilla/focus/session/ui/SessionsSheetFragment;Landroid/widget/TextView;)V

    move-object v1, v2

    .line 41
    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0042
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
