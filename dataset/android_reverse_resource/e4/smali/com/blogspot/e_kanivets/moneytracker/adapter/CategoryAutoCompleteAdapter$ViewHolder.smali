.class public Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CategoryAutoCompleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field ivCancel:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090076
    .end annotation
.end field

.field tvCategory:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900f3
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter$ViewHolder;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x8e46121a9616917L

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter$ViewHolder"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter$ViewHolder;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter$ViewHolder;->$jacocoInit()[Z

    move-result-object v0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 108
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
