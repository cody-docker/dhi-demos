# Docker Hardened Images (DHI) Demo Lab 🚀  
Welcome to the Docker Hardened Images (DHI) Demo Lab!  

In this lab, we’ll walk through how to improve the security of one of the most popular container images ever used, **NGINX**, by swapping in a more secure, hardened version.  

Whether you're new to containers or just curious about how we help teams ship more securely, this hands-on demo will show you the difference DHI can make in just a few simple steps.

---

## Why NGINX?

NGINX is the world's most widely used web server and API Gateway. If you're running anything on the internet, chances are you're using NGINX, or will be soon. That's why it's a perfect example to show how Docker Hardened Images can help improve your security posture with minimal changes to your existing workflow.

---

## The Challenge 🔍

Here’s the scenario:  

You've been using the standard NGINX image from Docker Hub for years. It's worked great! But now your **security team** says:  
> “No more containers with critical or high CVEs (Common Vulnerabilities and Exposures).”  

You’re already using **GitHub Actions** to build your own customized NGINX image, and now you want to check that image for known vulnerabilities.  

We’ll use **Docker Scout**, which provides a handy image scanner that plugs right into your pipeline!

### Your Updated Pipeline Will:
1. Build your custom NGINX container (with your configuration).
2. Scan the image for critical and high CVEs using Docker Scout.
3. Automatically **fail** the build if vulnerabilities are found.

Oops! Turns out the latest version of NGINX (1.28.0) has **4 critical CVEs**. That causes the pipeline to fail. Not ideal. But don’t worry, we’ve got a solution!

---

## The Solution: Docker Hardened Images 🎯

With **Docker Hardened Images**, you can easily replace the vulnerable NGINX image with a **hardened, distroless version** that contains **zero or near-zero CVEs**.

It’s simple:
1. Add the `dhi-nginx` container image to your Docker Hub organization.
2. Update your GitHub Actions workflow to use the hardened image.

Here’s what you’ll change in your workflow file: 

Open [./.github/workflows/docker-scout-cve-scan.yml](./.github/workflows/docker-scout-cve-scan.yml) and update these values:

```yaml
org_name: 
image_name: nginx
```

For example, if your Docker Hub organization is *demonstrationorg*, it would look like this:

```yaml
org_name: demonstrationorg
image_name: dhi-nginx
```

Once you commit the changes, your pipeline should pass—no critical CVEs detected!

⸻

That’s It! 🎉

You’ve just secured your NGINX deployment using Docker Hardened Images without needing to become a security expert.

This is the kind of simple, powerful upgrade you can brag about on LinkedIn 😉.

Happy demoing!