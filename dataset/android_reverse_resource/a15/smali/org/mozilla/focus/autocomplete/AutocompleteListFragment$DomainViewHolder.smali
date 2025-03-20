.class final Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AutocompleteListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DomainViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder$Companion;

# The value of this static final field might be set in the static constructor
.field private static final LAYOUT_ID:I = 0x7f0b0041


# instance fields
.field private final checkBoxView:Landroid/widget/CheckBox;

.field private final domainFormatter:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final domainView:Landroid/widget/TextView;

.field private final handleView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;->Companion:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder$Companion;

    .line 250
    const v0, 0x7f0b0041

    sput v0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;->LAYOUT_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "domainFormatter"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;->domainFormatter:Lkotlin/jvm/functions/Function1;

    .line 245
    const v0, 0x7f090060

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.domainView)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;->domainView:Landroid/widget/TextView;

    .line 246
    const v0, 0x7f090041

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.checkbox)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;->checkBoxView:Landroid/widget/CheckBox;

    .line 247
    const v0, 0x7f09007f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.handleView)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;->handleView:Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$getLAYOUT_ID$cp()I
    .locals 1

    .prologue
    .line 241
    sget v0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;->LAYOUT_ID:I

    return v0
.end method


# virtual methods
.method public final bind(Ljava/lang/String;ZLjava/util/List;Landroid/support/v7/widget/helper/ItemTouchHelper;Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;)V
    .locals 4
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "isSelectionMode"    # Z
    .param p3, "selectedDomains"    # Ljava/util/List;
    .param p4, "itemTouchHelper"    # Landroid/support/v7/widget/helper/ItemTouchHelper;
    .param p5, "fragment"    # Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v7/widget/helper/ItemTouchHelper;",
            "Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    const-string v0, "domain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedDomains"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemTouchHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    iget-object v3, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;->domainView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;->domainFormatter:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v3, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;->checkBoxView:Landroid/widget/CheckBox;

    if-eqz p2, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;->checkBoxView:Landroid/widget/CheckBox;

    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 264
    iget-object v3, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;->checkBoxView:Landroid/widget/CheckBox;

    new-instance v0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder$bind$1;

    invoke-direct {v0, p3, p1, p5}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder$bind$1;-><init>(Ljava/util/List;Ljava/lang/String;Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;)V

    check-cast v0, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 274
    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;->handleView:Landroid/view/View;

    if-eqz p2, :cond_3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object v1, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;->handleView:Landroid/view/View;

    new-instance v0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder$bind$2;

    invoke-direct {v0, p0, p4}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder$bind$2;-><init>(Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;Landroid/support/v7/widget/helper/ItemTouchHelper;)V

    check-cast v0, Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 282
    if-eqz p2, :cond_0

    .line 283
    iget-object v1, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder$bind$3;

    invoke-direct {v0, p0}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder$bind$3;-><init>(Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    :cond_0
    return-void

    :cond_1
    move-object v0, p1

    .line 260
    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_2
    move v0, v2

    .line 262
    goto :goto_1

    :cond_3
    move v2, v1

    .line 274
    goto :goto_2
.end method

.method public final getCheckBoxView()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;->checkBoxView:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public final onCleared()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 295
    return-void
.end method

.method public final onSelected()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainViewHolder;->itemView:Landroid/view/View;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 291
    return-void
.end method
