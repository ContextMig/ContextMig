.class public final Lme/writeily/R$array;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/writeily/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "array"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final font_size_array:I = 0x7f0b0000

.field public static final font_size_choices_array:I = 0x7f0b0001

.field public static final fonts_array:I = 0x7f0b0002

.field public static final fonts_type_array:I = 0x7f0b0003

.field public static final possibleLocksStrings:I = 0x7f0b0004

.field public static final possibleLocksValues:I = 0x7f0b0005

.field public static final themes_array:I = 0x7f0b0006


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/R$array;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xe10c7f95afcbff1L    # 6.291658776634824E-241

    const-string v2, "me/writeily/R$array"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/R$array;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/R$array;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
