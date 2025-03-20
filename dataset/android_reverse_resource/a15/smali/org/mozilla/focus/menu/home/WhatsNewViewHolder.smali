.class final Lorg/mozilla/focus/menu/home/WhatsNewViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "HomeMenuAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/menu/home/WhatsNewViewHolder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/mozilla/focus/menu/home/WhatsNewViewHolder$Companion;

# The value of this static final field might be set in the static constructor
.field private static final LAYOUT_ID:I = 0x7f0b004a


# instance fields
.field private final dotView:Landroid/view/View;

.field private final listener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lorg/mozilla/focus/menu/home/WhatsNewViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/focus/menu/home/WhatsNewViewHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/mozilla/focus/menu/home/WhatsNewViewHolder;->Companion:Lorg/mozilla/focus/menu/home/WhatsNewViewHolder$Companion;

    .line 86
    const v0, 0x7f0b004a

    sput v0, Lorg/mozilla/focus/menu/home/WhatsNewViewHolder;->LAYOUT_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lorg/mozilla/focus/menu/home/WhatsNewViewHolder;->listener:Landroid/view/View$OnClickListener;

    .line 83
    const v0, 0x7f090061

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.dot)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/mozilla/focus/menu/home/WhatsNewViewHolder;->dotView:Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$getLAYOUT_ID$cp()I
    .locals 1

    .prologue
    .line 79
    sget v0, Lorg/mozilla/focus/menu/home/WhatsNewViewHolder;->LAYOUT_ID:I

    return v0
.end method


# virtual methods
.method public final bind()V
    .locals 4

    .prologue
    .line 90
    sget-object v1, Lorg/mozilla/focus/whatsnew/WhatsNew;->Companion:Lorg/mozilla/focus/whatsnew/WhatsNew$Companion;

    iget-object v2, p0, Lorg/mozilla/focus/menu/home/WhatsNewViewHolder;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "itemView.context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/mozilla/focus/whatsnew/WhatsNew$Companion;->shouldHighlightWhatsNew(Landroid/content/Context;)Z

    move-result v0

    .line 92
    .local v0, "updated":Z
    if-eqz v0, :cond_0

    .line 93
    iget-object v1, p0, Lorg/mozilla/focus/menu/home/WhatsNewViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0800a0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 96
    :cond_0
    iget-object v1, p0, Lorg/mozilla/focus/menu/home/WhatsNewViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lorg/mozilla/focus/menu/home/WhatsNewViewHolder;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v2, p0, Lorg/mozilla/focus/menu/home/WhatsNewViewHolder;->dotView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    return-void

    .line 98
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method
