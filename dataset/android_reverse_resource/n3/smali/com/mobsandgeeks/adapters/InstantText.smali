.class public interface abstract annotation Lcom/mobsandgeeks/adapters/InstantText;
.super Ljava/lang/Object;
.source "InstantText.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/mobsandgeeks/adapters/InstantText;
        datePattern = ""
        datePatternResId = 0x0
        formatString = ""
        formatStringResId = 0x0
        isHtml = false
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract datePattern()Ljava/lang/String;
.end method

.method public abstract datePatternResId()I
.end method

.method public abstract formatString()Ljava/lang/String;
.end method

.method public abstract formatStringResId()I
.end method

.method public abstract isHtml()Z
.end method

.method public abstract viewId()I
.end method
