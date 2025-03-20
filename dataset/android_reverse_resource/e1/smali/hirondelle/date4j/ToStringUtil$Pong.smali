.class final Lhirondelle/date4j/ToStringUtil$Pong;
.super Ljava/lang/Object;
.source "ToStringUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhirondelle/date4j/ToStringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Pong"
.end annotation


# instance fields
.field private fPing:Lhirondelle/date4j/ToStringUtil$Ping;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lhirondelle/date4j/ToStringUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lhirondelle/date4j/ToStringUtil$1;

    .prologue
    .line 311
    invoke-direct {p0}, Lhirondelle/date4j/ToStringUtil$Pong;-><init>()V

    return-void
.end method


# virtual methods
.method public getPing()Lhirondelle/date4j/ToStringUtil$Ping;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lhirondelle/date4j/ToStringUtil$Pong;->fPing:Lhirondelle/date4j/ToStringUtil$Ping;

    return-object v0
.end method

.method public setPing(Lhirondelle/date4j/ToStringUtil$Ping;)V
    .locals 0
    .param p1, "aPing"    # Lhirondelle/date4j/ToStringUtil$Ping;

    .prologue
    .line 312
    iput-object p1, p0, Lhirondelle/date4j/ToStringUtil$Pong;->fPing:Lhirondelle/date4j/ToStringUtil$Ping;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 315
    const-class v0, Lhirondelle/date4j/ToStringUtil$Ping;

    const-string v1, "getId"

    invoke-static {p0, v0, v1}, Lhirondelle/date4j/ToStringUtil;->getTextAvoidCyclicRefs(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
