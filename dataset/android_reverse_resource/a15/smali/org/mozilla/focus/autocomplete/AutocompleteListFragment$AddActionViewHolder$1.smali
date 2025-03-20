.class final Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$AddActionViewHolder$1;
.super Ljava/lang/Object;
.source "AutocompleteListFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$AddActionViewHolder;-><init>(Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$AddActionViewHolder;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$AddActionViewHolder;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$AddActionViewHolder$1;->this$0:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$AddActionViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "it"    # Landroid/view/View;

    .prologue
    .line 307
    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$AddActionViewHolder$1;->this$0:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$AddActionViewHolder;

    invoke-virtual {v0}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$AddActionViewHolder;->getFragment()Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 309
    const v2, 0x7f090049

    new-instance v0, Lorg/mozilla/focus/autocomplete/AutocompleteAddFragment;

    invoke-direct {v0}, Lorg/mozilla/focus/autocomplete/AutocompleteAddFragment;-><init>()V

    check-cast v0, Landroid/app/Fragment;

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 310
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 312
    return-void
.end method
