.class public Lbr/com/vansexception/VansException;
.super Ljava/lang/Exception;
.source "VansException.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lbr/com/vansexception/VansException;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x4dfc916092e428ebL    # 4.813678232041696E67

    const-string v2, "br/com/vansexception/VansException"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lbr/com/vansexception/VansException;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lbr/com/vansexception/VansException;->$jacocoInit()[Z

    move-result-object v0

    .line 9
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 10
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lbr/com/vansexception/VansException;->$jacocoInit()[Z

    move-result-object v0

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    aput-boolean v1, v0, v1

    return-void
.end method
