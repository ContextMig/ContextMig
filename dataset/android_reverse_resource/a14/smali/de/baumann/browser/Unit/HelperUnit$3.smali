.class final Lde/baumann/browser/Unit/HelperUnit$3;
.super Ljava/lang/Object;
.source "HelperUnit.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Unit/HelperUnit;->grantPermissionsLoc(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 102
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
