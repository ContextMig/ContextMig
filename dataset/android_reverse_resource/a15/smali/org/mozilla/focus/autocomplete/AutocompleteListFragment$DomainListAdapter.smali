.class public final Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AutocompleteListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DomainListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAutocompleteListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutocompleteListFragment.kt\norg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter\n*L\n1#1,320:1\n*E\n"
.end annotation


# instance fields
.field private final domains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedDomains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;


# direct methods
.method public constructor <init>(Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;)V
    .locals 1
    .param p1, "$outer"    # Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 169
    iput-object p1, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;->this$0:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;->domains:Ljava/util/List;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;->selectedDomains:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getDomains$p(Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "$this"    # Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;

    .prologue
    .line 169
    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;->domains:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;->domains:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;->this$0:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;

    invoke-virtual {v0}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;->isSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 187
    .line 188
    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;->domains:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    sget-object v0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$AddActionViewHolder;->Companion:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$AddActionViewHolder$Companion;

    invoke-virtual {v0}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$AddActionViewHolder$Companion;->getLAYOUT_ID()I

    move-result v0

    .line 187
    :goto_0
    return v0

    .line 189
    :cond_0
    sget-object v0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;->Companion:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder$Companion;

    invoke-virtual {v0}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder$Companion;->getLAYOUT_ID()I

    move-result v0

    goto :goto_0
.end method

.method public final move(II)V
    .locals 6
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v1, 0x0

    .line 227
    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;->domains:Ljava/util/List;

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 228
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;->notifyItemMoved(II)V

    .line 230
    sget-object v0, Lkotlinx/coroutines/experimental/CommonPool;->INSTANCE:Lkotlinx/coroutines/experimental/CommonPool;

    check-cast v0, Lkotlin/coroutines/experimental/CoroutineContext;

    new-instance v3, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$move$1;

    invoke-direct {v3, p0, p1, p2, v1}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$move$1;-><init>(Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;IILkotlin/coroutines/experimental/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x6

    move-object v2, v1

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/experimental/BuildersKt;->launch$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlinx/coroutines/experimental/Job;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Job;

    .line 235
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 6
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    instance-of v0, p1, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 209
    check-cast v0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;

    .line 210
    iget-object v1, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;->domains:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 211
    iget-object v2, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;->this$0:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;

    invoke-virtual {v2}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;->isSelectionMode()Z

    move-result v2

    .line 212
    iget-object v3, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;->selectedDomains:Ljava/util/List;

    .line 213
    iget-object v4, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;->this$0:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;

    invoke-virtual {v4}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;->getItemTouchHelper()Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-result-object v4

    .line 214
    iget-object v5, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;->this$0:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;

    .line 209
    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;->bind(Ljava/lang/String;ZLjava/util/List;Landroid/support/v7/widget/helper/ItemTouchHelper;Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;)V

    .line 216
    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v3, 0x0

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    sget-object v0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$AddActionViewHolder;->Companion:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$AddActionViewHolder$Companion;

    invoke-virtual {v0}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$AddActionViewHolder$Companion;->getLAYOUT_ID()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 195
    new-instance v0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$AddActionViewHolder;

    .line 196
    iget-object v1, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;->this$0:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;

    .line 197
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const-string v3, "LayoutInflater.from(pare\u2026(viewType, parent, false)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-direct {v0, v1, v2}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$AddActionViewHolder;-><init>(Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;Landroid/view/View;)V

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 193
    :goto_0
    return-object v0

    .line 198
    :cond_0
    sget-object v0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;->Companion:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder$Companion;

    invoke-virtual {v0}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder$Companion;->getLAYOUT_ID()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 199
    new-instance v1, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;

    .line 200
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const-string v0, "LayoutInflater.from(pare\u2026(viewType, parent, false)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    sget-object v0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$onCreateViewHolder$1;->INSTANCE:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$onCreateViewHolder$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 199
    invoke-direct {v1, v2, v0}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    move-object v0, v1

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 202
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown view type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    instance-of v0, p1, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;

    if-eqz v0, :cond_0

    .line 220
    check-cast p1, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p1}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;->getCheckBoxView()Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 222
    :cond_0
    return-void
.end method

.method public final refresh(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "body"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function0",
            "<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lkotlinx/coroutines/experimental/android/HandlerContextKt;->getUI()Lkotlinx/coroutines/experimental/android/HandlerContext;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/experimental/CoroutineContext;

    new-instance v3, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$refresh$1;

    invoke-direct {v3, p0, p1, p2, v1}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$refresh$1;-><init>(Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/experimental/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x6

    move-object v2, v1

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/experimental/BuildersKt;->launch$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlinx/coroutines/experimental/Job;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Job;

    .line 184
    return-void
.end method

.method public final selection()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;->selectedDomains:Ljava/util/List;

    return-object v0
.end method
