.class final Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder$bind$1;
.super Ljava/lang/Object;
.source "AutocompleteListFragment.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;->bind(Ljava/lang/String;ZLjava/util/List;Landroid/support/v7/widget/helper/ItemTouchHelper;Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $domain:Ljava/lang/String;

.field final synthetic $fragment:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;

.field final synthetic $selectedDomains:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder$bind$1;->$selectedDomains:Ljava/util/List;

    iput-object p2, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder$bind$1;->$domain:Ljava/lang/String;

    iput-object p3, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder$bind$1;->$fragment:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "$noName_0"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    if-eqz p2, :cond_1

    .line 266
    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder$bind$1;->$selectedDomains:Ljava/util/List;

    iget-object v1, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder$bind$1;->$domain:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    :goto_0
    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder$bind$1;->$fragment:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;

    invoke-virtual {v0}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 272
    :cond_0
    return-void

    .line 268
    :cond_1
    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder$bind$1;->$selectedDomains:Ljava/util/List;

    iget-object v1, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder$bind$1;->$domain:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
