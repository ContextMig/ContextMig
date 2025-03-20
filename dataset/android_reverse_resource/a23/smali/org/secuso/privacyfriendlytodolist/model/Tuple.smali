.class public Lorg/secuso/privacyfriendlytodolist/model/Tuple;
.super Ljava/lang/Object;
.source "Tuple.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/model/Tuple;->a:Ljava/lang/Object;

    .line 32
    iput-object p2, p0, Lorg/secuso/privacyfriendlytodolist/model/Tuple;->b:Ljava/lang/Object;

    return-void
.end method

.method public static makePair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/secuso/privacyfriendlytodolist/model/Tuple;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "Q:",
            "Ljava/lang/Object;",
            ">(TP;TQ;)",
            "Lorg/secuso/privacyfriendlytodolist/model/Tuple<",
            "TP;TQ;>;"
        }
    .end annotation

    .line 24
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/model/Tuple;

    invoke-direct {v0, p0, p1}, Lorg/secuso/privacyfriendlytodolist/model/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getLeft()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/model/Tuple;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public getRight()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/model/Tuple;->b:Ljava/lang/Object;

    return-object v0
.end method
