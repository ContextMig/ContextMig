.class Lcom/adjust/sdk/ActivityHandler$7;
.super Ljava/lang/Object;
.source "ActivityHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/ActivityHandler;->setAskingAttribution(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/ActivityHandler;

.field final synthetic val$askingAttribution:Z


# direct methods
.method constructor <init>(Lcom/adjust/sdk/ActivityHandler;Z)V
    .locals 0

    .prologue
    .line 467
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler$7;->this$0:Lcom/adjust/sdk/ActivityHandler;

    iput-boolean p2, p0, Lcom/adjust/sdk/ActivityHandler$7;->val$askingAttribution:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$7;->this$0:Lcom/adjust/sdk/ActivityHandler;

    invoke-static {v0}, Lcom/adjust/sdk/ActivityHandler;->access$900(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/ActivityState;

    move-result-object v0

    iget-boolean v1, p0, Lcom/adjust/sdk/ActivityHandler$7;->val$askingAttribution:Z

    iput-boolean v1, v0, Lcom/adjust/sdk/ActivityState;->askingAttribution:Z

    .line 471
    return-void
.end method
