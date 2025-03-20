.class public final enum Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;
.super Ljava/lang/Enum;
.source "NodeFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/helper/jsoup/NodeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HeadFilterDecision"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

.field public static final enum CONTINUE:Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

.field public static final enum REMOVE:Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

.field public static final enum SKIP_CHILDREN:Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

.field public static final enum SKIP_ENTIRELY:Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

.field public static final enum STOP:Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

    const-string v1, "CONTINUE"

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;->CONTINUE:Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

    .line 51
    new-instance v0, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

    const-string v1, "SKIP_CHILDREN"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;->SKIP_CHILDREN:Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

    .line 55
    new-instance v0, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

    const-string v1, "SKIP_ENTIRELY"

    invoke-direct {v0, v1, v4}, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;->SKIP_ENTIRELY:Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

    .line 59
    new-instance v0, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

    const-string v1, "REMOVE"

    invoke-direct {v0, v1, v5}, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;->REMOVE:Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

    .line 63
    new-instance v0, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v6}, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;->STOP:Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

    .line 43
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

    sget-object v1, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;->CONTINUE:Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;->SKIP_CHILDREN:Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;->SKIP_ENTIRELY:Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;->REMOVE:Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;->STOP:Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

    aput-object v1, v0, v6

    sput-object v0, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;->$VALUES:[Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;->$VALUES:[Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

    invoke-virtual {v0}, [Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

    return-object v0
.end method
