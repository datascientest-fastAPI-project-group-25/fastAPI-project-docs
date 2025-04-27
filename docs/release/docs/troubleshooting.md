# Troubleshooting Guide

This guide provides solutions for common issues encountered during deployment and operation.

## Deployment Issues

### Helm Chart Installation Fails

**Symptoms:**
- Helm chart installation fails with errors
- Kubernetes resources are not created

**Solutions:**
1. Verify Helm chart values
   ```bash
   helm lint ./charts/fastapi
   ```

2. Check Kubernetes cluster connectivity
   ```bash
   kubectl cluster-info
   ```

3. Validate Kubernetes resources
   ```bash
   helm template ./charts/fastapi | kubectl apply --dry-run=client -f -
   ```

### Container Image Pull Failures

**Symptoms:**
- Pods stuck in "ImagePullBackOff" state
- Error messages about image pull failures

**Solutions:**
1. Verify image name and tag
   ```bash
   kubectl describe pod <pod-name>
   ```

2. Check container registry credentials
   ```bash
   kubectl get secret <registry-secret> -o yaml
   ```

3. Manually pull the image to verify access
   ```bash
   docker pull <image-name>:<tag>
   ```

## Runtime Issues

### Application Crashes

**Symptoms:**
- Pods restarting frequently
- Error messages in container logs

**Solutions:**
1. Check container logs
   ```bash
   kubectl logs <pod-name>
   ```

2. Verify environment variables
   ```bash
   kubectl describe pod <pod-name>
   ```

3. Check resource constraints
   ```bash
   kubectl describe pod <pod-name> | grep -A 5 Limits
   ```

### Database Connection Issues

**Symptoms:**
- Application logs show database connection errors
- Intermittent failures

**Solutions:**
1. Verify database service is running
   ```bash
   kubectl get pods -l app=postgres
   ```

2. Check database credentials
   ```bash
   kubectl get secret <db-secret> -o yaml
   ```

3. Test database connection from a temporary pod
   ```bash
   kubectl run -it --rm --image=postgres:12 pg-client -- psql -h postgres -U postgres
   ```

## Performance Issues

### Slow Response Times

**Symptoms:**
- API requests take longer than expected
- Timeouts in client applications

**Solutions:**
1. Check resource usage
   ```bash
   kubectl top pods
   ```

2. Analyze application metrics in Grafana
   ```bash
   kubectl port-forward svc/grafana 3000:3000
   ```

3. Scale up resources or replicas
   ```bash
   kubectl scale deployment <deployment-name> --replicas=3
   ```

## Getting Help

If you're unable to resolve an issue using this guide:

1. Check the GitHub issues for similar problems
2. Join the project's Slack channel for community support
3. Open a new issue with detailed information about the problem
