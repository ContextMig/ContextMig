.class public Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$SeparatorViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SelectCurrencyRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeparatorViewHolder"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$SeparatorViewHolder;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1f3dd1b181565923L

    const-string v2, "com/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$SeparatorViewHolder"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$SeparatorViewHolder;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$SeparatorViewHolder;->$jacocoInit()[Z

    move-result-object v0

    .line 191
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 192
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
