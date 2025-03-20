.class public final Lme/relex/circleindicator/R$id;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/relex/circleindicator/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final bottom:I = 0x7f0f002a

.field public static final center:I = 0x7f0f002b

.field public static final center_horizontal:I = 0x7f0f002c

.field public static final center_vertical:I = 0x7f0f002d

.field public static final clip_horizontal:I = 0x7f0f002e

.field public static final clip_vertical:I = 0x7f0f002f

.field public static final end:I = 0x7f0f0030

.field public static final fill:I = 0x7f0f0031

.field public static final fill_horizontal:I = 0x7f0f0032

.field public static final fill_vertical:I = 0x7f0f0033

.field public static final horizontal:I = 0x7f0f0028

.field public static final left:I = 0x7f0f0034

.field public static final right:I = 0x7f0f0035

.field public static final start:I = 0x7f0f0036

.field public static final top:I = 0x7f0f0037

.field public static final vertical:I = 0x7f0f0029


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/relex/circleindicator/R$id;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xdbbf0275a06f4c3L

    const-string v2, "me/relex/circleindicator/R$id"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/relex/circleindicator/R$id;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lme/relex/circleindicator/R$id;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
