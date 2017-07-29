.class Lcom/android/settings_ex/fq;
.super Ljava/lang/Object;
.source "MiuiSecurityTrustedCredentials.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic sX:Lcom/android/settings_ex/fo;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fo;)V
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lcom/android/settings_ex/fq;->sX:Lcom/android/settings_ex/fo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 494
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 495
    return-void
.end method
