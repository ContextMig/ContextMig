.class final Lorg/mozilla/focus/menu/home/MenuItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "HomeMenuAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/menu/home/MenuItemViewHolder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/mozilla/focus/menu/home/MenuItemViewHolder$Companion;

# The value of this static final field might be set in the static constructor
.field private static final LAYOUT_ID:I = 0x7f0b0048


# instance fields
.field private final labelView:Landroid/widget/TextView;

.field private final listener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lorg/mozilla/focus/menu/home/MenuItemViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/focus/menu/home/MenuItemViewHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/mozilla/focus/menu/home/MenuItemViewHolder;->Companion:Lorg/mozilla/focus/menu/home/MenuItemViewHolder$Companion;

    .line 64
    const v0, 0x7f0b0048

    sput v0, Lorg/mozilla/focus/menu/home/MenuItemViewHolder;->LAYOUT_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "labelView"    # Landroid/widget/TextView;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    const-string v0, "labelView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    .line 61
    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/mozilla/focus/menu/home/MenuItemViewHolder;->labelView:Landroid/widget/TextView;

    iput-object p2, p0, Lorg/mozilla/focus/menu/home/MenuItemViewHolder;->listener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static final synthetic access$getLAYOUT_ID$cp()I
    .locals 1

    .prologue
    .line 58
    sget v0, Lorg/mozilla/focus/menu/home/MenuItemViewHolder;->LAYOUT_ID:I

    return v0
.end method


# virtual methods
.method public final bind(Lorg/mozilla/focus/menu/home/MenuItem;)V
    .locals 2
    .param p1, "item"    # Lorg/mozilla/focus/menu/home/MenuItem;

    .prologue
    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lorg/mozilla/focus/menu/home/MenuItemViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/mozilla/focus/menu/home/MenuItem;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 69
    iget-object v1, p0, Lorg/mozilla/focus/menu/home/MenuItemViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/mozilla/focus/menu/home/MenuItem;->getLabel()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lorg/mozilla/focus/menu/home/MenuItemViewHolder;->labelView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/mozilla/focus/menu/home/MenuItemViewHolder;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method
