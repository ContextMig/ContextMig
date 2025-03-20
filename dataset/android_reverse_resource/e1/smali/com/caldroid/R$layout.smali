.class public final Lcom/caldroid/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caldroid/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final calendar_view:I = 0x7f040022

.field public static final date_grid_fragment:I = 0x7f040024

.field public static final normal_date_cell:I = 0x7f04003f

.field public static final square_date_cell:I = 0x7f040058

.field public static final weekday_textview:I = 0x7f04005a


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/caldroid/R$layout;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x33c2d870da952d5dL    # -1.8300593822207575E59

    const-string v2, "com/caldroid/R$layout"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/caldroid/R$layout;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/caldroid/R$layout;->$jacocoInit()[Z

    move-result-object v0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
