.class public Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;
.super Landroid/app/Fragment;
.source "AutocompleteListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;,
        Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;,
        Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$AddActionViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAutocompleteListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutocompleteListFragment.kt\norg/mozilla/focus/autocomplete/AutocompleteListFragment\n*L\n1#1,320:1\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final itemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 45
    new-instance v1, Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 46
    new-instance v0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$itemTouchHelper$1;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$itemTouchHelper$1;-><init>(II)V

    check-cast v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .line 45
    invoke-direct {v1, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iput-object v1, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;->itemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final getItemTouchHelper()Landroid/support/v7/widget/helper/ItemTouchHelper;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;->itemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    return-object v0
.end method

.method public isSelectionMode()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;->setHasOptionsMenu(Z)V

    .line 106
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 141
    if-eqz p2, :cond_0

    const v0, 0x7f0c0001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 142
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 115
    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const v0, 0x7f0b0039

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "inflater!!.inflate(R.lay\u2026omains, container, false)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    .line 154
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 155
    :goto_0
    const v2, 0x7f0900d0

    if-nez v0, :cond_2

    .line 163
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 154
    :goto_1
    return v0

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 155
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 156
    invoke-virtual {p0}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 158
    const v3, 0x7f090049

    new-instance v0, Lorg/mozilla/focus/autocomplete/AutocompleteRemoveFragment;

    invoke-direct {v0}, Lorg/mozilla/focus/autocomplete/AutocompleteRemoveFragment;-><init>()V

    check-cast v0, Landroid/app/Fragment;

    invoke-virtual {v2, v3, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 159
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 161
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 145
    if-eqz p1, :cond_1

    const v3, 0x7f0900d0

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 147
    .local v2, "removeItem":Landroid/view/MenuItem;
    :goto_0
    if-eqz v2, :cond_5

    move-object v1, v2

    .line 148
    .local v1, "it":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;->isSelectionMode()Z

    move-result v3

    if-nez v3, :cond_0

    sget v3, Lorg/mozilla/focus/R$id;->domainList:I

    invoke-virtual {p0, v3}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    const-string v6, "domainList"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    const-string v6, "domainList.adapter"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    if-le v3, v5, :cond_2

    :cond_0
    move v3, v5

    :goto_1
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 149
    invoke-virtual {p0}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;->isSelectionMode()Z

    move-result v3

    if-eqz v3, :cond_4

    sget v3, Lorg/mozilla/focus/R$id;->domainList:I

    invoke-virtual {p0, v3}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    const-string v6, "domainList"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    if-nez v3, :cond_3

    new-instance v3, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type org.mozilla.focus.autocomplete.AutocompleteListFragment.DomainListAdapter"

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 145
    .end local v1    # "it":Landroid/view/MenuItem;
    .end local v2    # "removeItem":Landroid/view/MenuItem;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .restart local v1    # "it":Landroid/view/MenuItem;
    .restart local v2    # "removeItem":Landroid/view/MenuItem;
    :cond_2
    move v3, v4

    .line 148
    goto :goto_1

    .line 149
    :cond_3
    check-cast v3, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;

    invoke-virtual {v3}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;->selection()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    move v3, v5

    :goto_2
    if-eqz v3, :cond_7

    :cond_4
    move v0, v5

    .line 150
    .local v0, "isEnabled":Z
    :goto_3
    invoke-static {v1, v0}, Lorg/mozilla/focus/utils/ViewUtils;->setMenuItemEnabled(Landroid/view/MenuItem;Z)V

    .line 151
    nop

    nop

    .line 152
    .end local v0    # "isEnabled":Z
    .end local v1    # "it":Landroid/view/MenuItem;
    :cond_5
    return-void

    .restart local v1    # "it":Landroid/view/MenuItem;
    :cond_6
    move v3, v4

    .line 149
    goto :goto_2

    :cond_7
    move v0, v4

    goto :goto_3
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 130
    invoke-virtual {p0}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type org.mozilla.focus.settings.BaseSettingsFragment.ActionBarUpdater"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    check-cast v0, Lorg/mozilla/focus/settings/BaseSettingsFragment$ActionBarUpdater;

    .line 131
    .local v0, "$receiver":Lorg/mozilla/focus/settings/BaseSettingsFragment$ActionBarUpdater;
    const v1, 0x7f0f00cc

    invoke-interface {v0, v1}, Lorg/mozilla/focus/settings/BaseSettingsFragment$ActionBarUpdater;->updateTitle(I)V

    .line 132
    const v1, 0x7f080084

    invoke-interface {v0, v1}, Lorg/mozilla/focus/settings/BaseSettingsFragment$ActionBarUpdater;->updateIcon(I)V

    .line 133
    nop

    .line 130
    nop

    .line 135
    sget v1, Lorg/mozilla/focus/R$id;->domainList:I

    invoke-virtual {p0, v1}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    const-string v2, "domainList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type org.mozilla.focus.autocomplete.AutocompleteListFragment.DomainListAdapter"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    check-cast v1, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;

    invoke-virtual {p0}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "activity"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/content/Context;

    new-instance v3, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$onResume$2;

    invoke-direct {v3, p0}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$onResume$2;-><init>(Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, v2, v3}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;->refresh(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    .line 138
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 118
    sget v0, Lorg/mozilla/focus/R$id;->domainList:I

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    const-string v1, "domainList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v4, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    move-object v1, v2

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 119
    sget v0, Lorg/mozilla/focus/R$id;->domainList:I

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    const-string v1, "domainList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;

    invoke-direct {v1, p0}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;-><init>(Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;)V

    check-cast v1, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 120
    sget v0, Lorg/mozilla/focus/R$id;->domainList:I

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 122
    invoke-virtual {p0}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;->isSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v1, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;->itemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    sget v0, Lorg/mozilla/focus/R$id;->domainList:I

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 125
    :cond_0
    return-void
.end method
