.class public final enum Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;
.super Ljava/lang/Enum;
.source "NodeFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/helper/jsoup/NodeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TailFilterDecision"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;

.field public static final enum CONTINUE:Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;

.field public static final enum REMOVE:Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;

.field public static final enum STOP:Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-instance v0, Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;

    const-string v1, "CONTINUE"

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;->CONTINUE:Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;

    .line 77
    new-instance v0, Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;

    const-string v1, "REMOVE"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;->REMOVE:Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;

    .line 81
    new-instance v0, Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v4}, Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;->STOP:Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;

    sget-object v1, Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;->CONTINUE:Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;->REMOVE:Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;->STOP:Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;->$VALUES:[Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    const-class v0, Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;->$VALUES:[Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;

    invoke-virtual {v0}, [Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;

    return-object v0
.end method
