.class final Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder$bind$2;
.super Ljava/lang/Object;
.source "AutocompleteListFragment.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;->bind(Ljava/lang/String;ZLjava/util/List;Landroid/support/v7/widget/helper/ItemTouchHelper;Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $itemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field final synthetic this$0:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;Landroid/support/v7/widget/helper/ItemTouchHelper;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder$bind$2;->this$0:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;

    iput-object p2, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder$bind$2;->$itemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "$noName_0"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 276
    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 277
    iget-object v1, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder$bind$2;->$itemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder$bind$2;->this$0:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 279
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
