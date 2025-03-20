.class final Lhirondelle/date4j/ToStringUtil$Ping;
.super Ljava/lang/Object;
.source "ToStringUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhirondelle/date4j/ToStringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Ping"
.end annotation


# instance fields
.field private fPong:Lhirondelle/date4j/ToStringUtil$Pong;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lhirondelle/date4j/ToStringUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lhirondelle/date4j/ToStringUtil$1;

    .prologue
    .line 301
    invoke-direct {p0}, Lhirondelle/date4j/ToStringUtil$Ping;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 304
    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x7b

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method public getPong()Lhirondelle/date4j/ToStringUtil$Pong;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lhirondelle/date4j/ToStringUtil$Ping;->fPong:Lhirondelle/date4j/ToStringUtil$Pong;

    return-object v0
.end method

.method public getUserPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    const-string v0, "blah"

    return-object v0
.end method

.method public setPong(Lhirondelle/date4j/ToStringUtil$Pong;)V
    .locals 0
    .param p1, "aPong"    # Lhirondelle/date4j/ToStringUtil$Pong;

    .prologue
    .line 302
    iput-object p1, p0, Lhirondelle/date4j/ToStringUtil$Ping;->fPong:Lhirondelle/date4j/ToStringUtil$Pong;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    invoke-static {p0}, Lhirondelle/date4j/ToStringUtil;->getText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
