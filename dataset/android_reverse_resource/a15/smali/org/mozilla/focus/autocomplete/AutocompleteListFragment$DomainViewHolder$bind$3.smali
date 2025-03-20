.class final Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder$bind$3;
.super Ljava/lang/Object;
.source "AutocompleteListFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;->bind(Ljava/lang/String;ZLjava/util/List;Landroid/support/v7/widget/helper/ItemTouchHelper;Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder$bind$3;->this$0:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "it"    # Landroid/view/View;

    .prologue
    .line 284
    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder$bind$3;->this$0:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;

    invoke-virtual {v0}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;->getCheckBoxView()Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder$bind$3;->this$0:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;

    invoke-virtual {v0}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;->getCheckBoxView()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 285
    return-void

    .line 284
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
