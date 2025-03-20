.class public final Lcom/getbase/floatingactionbutton/R$id;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getbase/floatingactionbutton/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final down:I = 0x7f0f003c

.field public static final fab_expand_menu_button:I = 0x7f0f0004

.field public static final fab_label:I = 0x7f0f0005

.field public static final left:I = 0x7f0f0034

.field public static final mini:I = 0x7f0f003b

.field public static final normal:I = 0x7f0f0012

.field public static final right:I = 0x7f0f0035

.field public static final up:I = 0x7f0f000f


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/getbase/floatingactionbutton/R$id;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3bfaf18d1ed89e81L    # 9.128833071493397E-20

    const-string v2, "com/getbase/floatingactionbutton/R$id"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/getbase/floatingactionbutton/R$id;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/getbase/floatingactionbutton/R$id;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
