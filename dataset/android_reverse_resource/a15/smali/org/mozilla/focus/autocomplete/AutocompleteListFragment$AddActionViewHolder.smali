.class final Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$AddActionViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AutocompleteListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AddActionViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$AddActionViewHolder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$AddActionViewHolder$Companion;

# The value of this static final field might be set in the static constructor
.field private static final LAYOUT_ID:I = 0x7f0b003f


# instance fields
.field private final fragment:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$AddActionViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$AddActionViewHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$AddActionViewHolder;->Companion:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$AddActionViewHolder$Companion;

    .line 316
    const v0, 0x7f0b003f

    sput v0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$AddActionViewHolder;->LAYOUT_ID:I

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;Landroid/view/View;)V
    .locals 1
    .param p1, "fragment"    # Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$AddActionViewHolder;->fragment:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;

    .line 306
    new-instance v0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$AddActionViewHolder$1;

    invoke-direct {v0, p0}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$AddActionViewHolder$1;-><init>(Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$AddActionViewHolder;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic access$getLAYOUT_ID$cp()I
    .locals 1

    .prologue
    .line 301
    sget v0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$AddActionViewHolder;->LAYOUT_ID:I

    return v0
.end method


# virtual methods
.method public final getFragment()Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$AddActionViewHolder;->fragment:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;

    return-object v0
.end method
