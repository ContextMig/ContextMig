.class public final Lcom/iliakplv/notes/R$drawable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iliakplv/notes/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "drawable"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final drawer_shadow:I = 0x7f020000

.field public static final ic_done:I = 0x7f020001

.field public static final ic_drawer:I = 0x7f020002

.field public static final ic_launcher:I = 0x7f020003

.field public static final ic_menu_add:I = 0x7f020004

.field public static final ic_menu_back:I = 0x7f020005

.field public static final ic_speak:I = 0x7f020006


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/R$drawable;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x11c0dfb5550480e7L

    const-string v2, "com/iliakplv/notes/R$drawable"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/R$drawable;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/R$drawable;->$jacocoInit()[Z

    move-result-object v0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
