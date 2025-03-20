.class public Lcom/fsck/k9/Globals;
.super Ljava/lang/Object;
.source "Globals.java"


# static fields
.field private static context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lcom/fsck/k9/Globals;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No context provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_0
    sget-object v0, Lcom/fsck/k9/Globals;->context:Landroid/content/Context;

    return-object v0
.end method

.method static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    sput-object p0, Lcom/fsck/k9/Globals;->context:Landroid/content/Context;

    .line 12
    return-void
.end method
