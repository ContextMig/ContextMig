.class public final Lorg/asdtm/goodweather/R$xml;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/asdtm/goodweather/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "xml"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final pref_about:I = 0x7f070000

.field public static final pref_general:I = 0x7f070001

.field public static final pref_headers:I = 0x7f070002

.field public static final pref_widget:I = 0x7f070003

.field public static final searchable:I = 0x7f070004

.field public static final widget_provider_less:I = 0x7f070005

.field public static final widget_provider_more:I = 0x7f070006


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/R$xml;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x652555d226ed2bb0L    # 1.7291191776915633E179

    const-string v2, "org/asdtm/goodweather/R$xml"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/R$xml;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/R$xml;->$jacocoInit()[Z

    move-result-object v0

    .line 4251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
