.class Lde/cketti/safecontentresolver/ErrnoException;
.super Ljava/lang/Exception;
.source "ErrnoException.java"


# instance fields
.field public final errno:I

.field private final functionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "errno"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 25
    iput-object p1, p0, Lde/cketti/safecontentresolver/ErrnoException;->functionName:Ljava/lang/String;

    .line 26
    iput p2, p0, Lde/cketti/safecontentresolver/ErrnoException;->errno:I

    .line 27
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lde/cketti/safecontentresolver/ErrnoException;->functionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lde/cketti/safecontentresolver/ErrnoException;->errno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
